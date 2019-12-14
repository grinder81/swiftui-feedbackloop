//
//  HomeState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation


struct HomeState: Builder {
    var status: HomeStatus = .dashboard
}

extension HomeState: Equatable {
    static func == (lhs: HomeState, rhs: HomeState) -> Bool {
        return lhs.status == rhs.status
    }
}


enum HomeStatus: Hashable {
    case dashboard
    case favourite
    case account(AccountState)
    case settings
}

extension HomeStatus: Equatable {
    static func == (lhs: HomeStatus, rhs: HomeStatus) -> Bool {
        switch (lhs, rhs) {
        case (.dashboard, .dashboard):
            return true
        case (.favourite, .favourite):
            return true
        case let (.account(lhsAcc), .account(rhsAcc)):
            return lhsAcc == rhsAcc
        case (.settings, .settings):
            return true
        default:
            return false
        }
    }
}
