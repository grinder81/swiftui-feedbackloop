//
//  AccountState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-20.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

enum AccountState {
    case profile
    case privacy
    case security
    case qa
}

extension AccountState: Equatable {
    static func == (lhs: AccountState, rhs: AccountState) -> Bool {
        switch (lhs, rhs) {
        case (.profile, .profile):
            return true
        case (.privacy, .privacy):
            return true
        case (.security, .security):
            return true
        case (.qa, .qa):
            return true
        default:
            return false
        }
    }
}
