//
//  LoginState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct LoginState: Builder {
    var userName: String = ""
    var password: String = ""
    var isValid: Bool = false
    var status: LoginStatus = .idle
}

enum LoginStatus {
    case idle
    case submitting
    case validatingUsername
}

