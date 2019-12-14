//
//  LoginView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import Combine
import CombineFeedback
import CombineFeedbackUI

struct LoginView: View {
    typealias State = LoginState
    typealias Event = LoginEvent
    
    private let context: Context<LoginState, LoginEvent>
    
    init(context: Context<LoginState, LoginEvent>) {
        self.context = context
    }
    
    var body: some View {
        return Form {
            TextField("Username",
                      text: context.binding(for: \.userName, event: LoginEvent.didChangeUserName))
            
            TextField("Password",
                      text: context.binding(for: \.password, event: LoginEvent.didChangePassword))
            
            Button(action: context.action(for: .login)) {
                Text("Login").multilineTextAlignment(.center)
            }
        }.navigationBarTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Widget(viewModel: LoginViewModel(initial: LoginState(), appState: AppState()), render: LoginView.init)
    }
}
