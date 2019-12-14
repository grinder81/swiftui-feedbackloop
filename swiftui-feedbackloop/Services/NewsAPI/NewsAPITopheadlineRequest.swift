//
//  NewsAPITopheadlineRequest.swift
//  swiftui-mvvm
//
//  Created by MD AL MAMUN (LCL) on 2019-11-15.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct NewsAPITopheadlineRequest: APIRequest {

    typealias Response = NewsTopheadlineResponse
    
    var path: String { return "/v2/top-headlines" }
    var queryItems: [URLQueryItem]? {
        return [.init(name: "api",      value: "1944816ba04b445c9264dbb74f4e5b32"),
                .init(name: "country",  value: "us")]
    }
}
