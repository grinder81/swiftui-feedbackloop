//
//  ContentView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-17.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import CombineFeedback
import CombineFeedbackUI

struct AppView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        switch store.appState.status {
        case .authenticating(let authState):
            return AnyView(Widget(viewModel: AuthViewModel(initial: authState), render: AuthView.init))
        case .onboarding(let onboardingState):
            return AnyView(Widget(viewModel: OnboardingViewModel(initial: onboardingState), render: OnboardingView.init))
        case .launching(let homeState):
            return AnyView(Widget(viewModel: HomeViewModel(initial: homeState), render: HomeView.init))
        case .configuring:
            return AnyView(Widget(viewModel: ConfiguringViewModel(initial: ConfiguringState(), store: store), render: ConfiguringView.init))
        }
    }
}

struct AppView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppView()
    }
}

struct InitialView: View {
    var body: some View {
        Text("Root View!")
    }
}
