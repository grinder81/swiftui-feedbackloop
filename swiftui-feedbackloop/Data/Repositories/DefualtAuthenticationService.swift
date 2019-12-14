//
//  DefualtAuthenticationService.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-12-14.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Combine

final class DefaultAuthenticationService: AuthenticationService {
    func authenticate(using credential: AuthCredential) -> AnyPublisher<User, AuthenticationServiceError> {
        return Empty<User, AuthenticationServiceError>()
            .eraseToAnyPublisher()
    }
}
