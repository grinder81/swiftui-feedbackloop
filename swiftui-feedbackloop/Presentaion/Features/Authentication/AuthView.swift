//
//  AuthView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import CombineFeedback
import CombineFeedbackUI

struct AuthView: View {
    @EnvironmentObject var appState: AppState
    
    typealias State = AuthState
    typealias Event = AuthEvent
    
    private let context: Context<AuthState, AuthEvent>
    
    init(context: Context<AuthState, AuthEvent>) {
        self.context = context
    }
    
    var body: some View {
        return NavigationView {
            GeometryReader { geometry in
                VStack {
                    NavigationLink(destination: Widget(viewModel: LoginViewModel(initial: LoginState(), appState: self.appState), render: LoginView.init)) {
                        Text("Login")
                            .frame(width: geometry.size.width / 2, height: 60, alignment: .center)
                            .background(Color("brandPrimary"))

                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(destination: RegistrationView()) {
                        Text("Registration")
                            .frame(width: geometry.size.width / 2, height: 60, alignment: .center)
                            .background(Color("brandPrimary"))
                    }
                }
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            Widget(viewModel: AuthViewModel(initial: AuthState()), render: AuthView.init)
                .environment(\.colorScheme, .light)
            
            Widget(viewModel: AuthViewModel(initial: AuthState()), render: AuthView.init)
                .environment(\.colorScheme, .dark)

        }
    }
}
