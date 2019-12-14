//
//  AppViewModifier.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-26.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import SwiftUI

struct DependencyModifier: ViewModifier {
    
    let appState: AppState
    let container: DependencyContainer
    
    init(state: AppState, container: DependencyContainer) {
        self.appState = state
        self.container = container
    }
    
    func body(content: Content) -> some View {
        return content
            .environment(\.container, self.container)
            .environmentObject(self.appState)
    }
    
    
}
