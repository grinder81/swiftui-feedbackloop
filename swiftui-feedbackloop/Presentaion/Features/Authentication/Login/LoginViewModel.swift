//
//  LoginView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine
import CombineFeedback
import CombineFeedbackUI

final class LoginViewModel: ViewModel<LoginState, LoginEvent> {
    init(initial: LoginState, appState: AppState) {
        super.init(initial: initial,
                   feedbacks: [LoginViewModel.whenAuthenticated(appState),
                               LoginViewModel.willvalidateUsername()],
                   scheduler: DispatchQueue.main,
                   reducer: LoginViewModel.reduce
        )
    }
    

    static func willvalidateUsername() -> Feedback<LoginState, LoginEvent> {
        return Feedback(effects: { (state) -> AnyPublisher<LoginEvent, Never> in
            guard case .validatingUsername = state.status else {
               return Empty().eraseToAnyPublisher()
            }
            //print(state.userName)
            //state.userName.count > 5
            return Empty().eraseToAnyPublisher()
        })
    }
    
    
    static func whenAuthenticated(_ appState: AppState) -> Feedback<LoginState, LoginEvent> {
        return Feedback(effects: { (state) -> AnyPublisher<LoginEvent, Never> in
            guard state.status == .submitting else {
                return Empty().eraseToAnyPublisher()
            }
            appState.status = .launching(HomeState())
            return Empty().eraseToAnyPublisher()
        })
    }
    
    private static func reduce(state: LoginState, event: LoginEvent) -> LoginState {
        switch event {
        case .didChangeUserName(let name):
            //print(name)
            return state
                .set(\.userName, name)
                .set(\.status, .validatingUsername)
        case .login:
            return state.set(\.status, .submitting)
        default:
            return state
        }
    }

}
