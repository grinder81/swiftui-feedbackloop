//
//  DependencyContainer.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-26.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI

protocol HasNewsAPIService {
    var newsApiService: APIService { get }
}

typealias AllDependency = HasNewsAPIService


final class DependencyContainer: AllDependency, EnvironmentKey {
    lazy var newsApiService: APIService = {
        return NewsAPIService()
    }()
    
    // We can return mock / stub one here
    static var defaultValue: DependencyContainer {
        return DependencyContainer()
    }
}

extension EnvironmentValues {
    var container: DependencyContainer {
        get { self[DependencyContainer.self] }
        set { self[DependencyContainer.self] = newValue }
    }
}
