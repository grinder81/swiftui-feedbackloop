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

    @State var userName: String = ""
    
//    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TextField("Username", text: $userName)
//        switch appState.status {
//        case .authenticating(let authState):
//            return AnyView(Widget(viewModel: AuthViewModel(initial: authState), render: AuthView.init))
//        case .onboarding(let onboardingState):
//            return AnyView(Widget(viewModel: OnboardingViewModel(initial: onboardingState), render: OnboardingView.init))
//        case .launching(let homeState):
//            return AnyView(Widget(viewModel: HomeViewModel(initial: homeState), render: HomeView.init))
//        case .configuring:
//            return AnyView(Widget(viewModel: ConfiguringViewModel(initial: ConfiguringState(), appState: appState), render: ConfiguringView.init))
//        }
    }
}

extension View {
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
}

struct AppView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppView()
            .environment(\.dependencyContainer, DependencyContainerKey.defaultValue)
    }
}

struct InitialView: View {
    var body: some View {
        Text("Root View!")
    }
}
