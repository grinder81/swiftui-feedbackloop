//
//  AuthState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct AuthState: Builder {
    var status: AuthStatus = .landing
}

extension AuthState: Equatable {
    static func == (lhs: AuthState, rhs: AuthState) -> Bool {
        return lhs.status == rhs.status
    }
}

enum AuthStatus {
    case landing
    case login
    case registration
}

extension AuthStatus: Equatable {
    static func == (lhs: AuthStatus, rhs: AuthStatus) -> Bool {
        switch (lhs, rhs) {
        case (.landing, .landing):
            return true
        case (.login, .login):
            return true
        case (.registration, .registration):
            return true
        default:
            return false
        }
    }
}

struct RegistrationState: Builder {
    var userName: String = ""
    var password: String = ""
    var email: String    = ""
}
