//
//  NewsAPIService.swift
//  swiftui-mvvm
//
//  Created by MD AL MAMUN (LCL) on 2019-11-15.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine

final class NewsAPIService: APIService {
    
    private let baseUrl: URL
    
    init(url: String = "https://newsapi.org") {
        baseUrl = URL(string: url)!
    }
    
    func response<Request>(from request: Request) -> AnyPublisher<Request.Response, APIServiceError> where Request : APIRequest {
       
        // Path + Component
        guard let pathUrl = URL(string: request.path, relativeTo: baseUrl) else {
                return Fail(error: APIServiceError.urlError)
                    .eraseToAnyPublisher()
        }
        
        var urlComponents = URLComponents(url: pathUrl, resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = request.queryItems
        
        // Request
        var urlRequest = URLRequest(url: urlComponents.url!)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap({ (data, response) in
                guard let response = response as? HTTPURLResponse,
                    response.statusCode == 200 else {
                        throw APIServiceError.responseError
                }
                return data
            })
            .mapError { _ in APIServiceError.responseError }
            .decode(type: Request.Response.self, decoder: decoder)
            .mapError (APIServiceError.parseError)
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
