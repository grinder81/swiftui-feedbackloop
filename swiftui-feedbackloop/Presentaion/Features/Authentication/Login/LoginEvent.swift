//
//  LoginEvent.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation


/// All User action:
///     - User tapped
///     - User button action
///     - Anything user action must be an event
///
/// All System event:
///     - API start loading data
///     - Data loading finished with success then embed data
///     - Data loading failed then embed error
///
/// Remember, only event can change your view or app state! So when you feel
/// you need to change any UI comonent to need to do some system state change
/// then you create a new event to mutate or change the state!

enum LoginEvent {
    case didChangeUserName(String)
    case didChangePassword(String)
    case login
    case didLogin(Auth)
    case didFail(Error)
}
