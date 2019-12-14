//
//  AuthenticationService.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-12-14.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Combine

// MARK: - AuthenticationService

protocol AuthenticationService {
    func authenticate(using credential: AuthCredential) -> AnyPublisher<User, AuthenticationServiceError>
}

// MARK: - AuthenticationServiceError

enum AuthenticationServiceError: Error {
    case unexpectedResponse
}

// MARK: - AuthenticationServiceProvider

protocol AuthenticationServiceProvider {
    var authenticationService: AuthenticationService { get }
}
