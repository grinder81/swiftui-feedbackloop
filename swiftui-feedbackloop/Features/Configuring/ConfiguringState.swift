//
//  ConfiguringState.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-20.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct ConfiguringState: Builder {
    var status: ConfiguringStatus = .loading
}

enum ConfiguringStatus {
    case loading
    case loaded(Bool)
}

extension ConfiguringStatus: Equatable {
    static func == (lhs: ConfiguringStatus, rhs: ConfiguringStatus) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading):
            return true
        case let (.loaded(x), loaded(y)):
            return x == y
        default:
            return false
        }
    }
}
