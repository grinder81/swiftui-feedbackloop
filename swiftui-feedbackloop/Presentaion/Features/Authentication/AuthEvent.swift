//
//  AuthEvent.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

enum AuthEvent {
    case login
    case registration
}

enum RegistrationEvent {
    case didChangeUserName(String)
    case didChangePassword(String)
    case register
    case didRegister(Auth)
    case didFail(Error)
}

