//
//  OnboardingState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct OnboardingState {
    var status: OnboardingStatus = .getStarted
}

extension OnboardingState: Equatable {
    static func == (lhs: OnboardingState, rhs: OnboardingState) -> Bool {
        return lhs.status == rhs.status
    }
}

enum OnboardingStatus {
    case getStarted
    case stepOne
    case stepTwo
}

extension OnboardingStatus: Equatable {
    static func == (lhs: OnboardingStatus, rhs: OnboardingStatus) -> Bool {
        switch (lhs, rhs) {
        case (.getStarted, .getStarted):
            return true
        case (.stepOne, .stepOne):
            return true
        case (.stepTwo, .stepTwo):
            return true
        default:
            return false
        }
    }
}
