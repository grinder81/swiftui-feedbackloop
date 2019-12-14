//
//  AppState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var status: AppStatus = .configuring
}

enum AppStatus {
    case configuring
    case authenticating(AuthState)
    case onboarding(OnboardingState)
    case launching(HomeState)
}

extension AppStatus: Equatable {
    static func == (lhs: AppStatus, rhs: AppStatus) -> Bool {
        switch (lhs, rhs) {
        case (.configuring, .configuring):
            return true
        case let (.authenticating(lhsAuth), .authenticating(rhsAuth)):
            return lhsAuth == rhsAuth
        case let (.onboarding(lhsOnboard), .onboarding(rhsOnboard)):
            return lhsOnboard == rhsOnboard
        case let (.launching(lhsLaunched), .launching(rhsLaunched)):
            return lhsLaunched == rhsLaunched
        default:
            return false
        }
    }
}
