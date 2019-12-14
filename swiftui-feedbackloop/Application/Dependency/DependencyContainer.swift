//
//  DependencyContainer.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-26.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI

import SwiftUI

typealias DependencyContainerType = AuthenticationServiceProvider

// MARK: - DependencyContainer

final class DependencyContainer: DependencyContainerType {
    
    lazy var authenticationService: AuthenticationService = {
        return DefaultAuthenticationService()
    }()
    
}

// MARK: - DependencyContainerKey

struct DependencyContainerKey: EnvironmentKey {
    static var defaultValue: DependencyContainerType {
        return DependencyContainer()
    }
}

// MARK: - EnvironmentValues

extension EnvironmentValues {
    var dependencyContainer: DependencyContainerType {
        get {
            self[DependencyContainerKey.self]
        }

        set {
            self[DependencyContainerKey.self] = newValue
        }
    }
}
