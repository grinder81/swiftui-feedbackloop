//
//  AuthViewModel.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine
import CombineFeedback
import CombineFeedbackUI


final class AuthViewModel: ViewModel<AuthState, AuthEvent> {
    init(initial: AuthState) {
        super.init(initial: initial,
                   feedbacks: [],
                   scheduler: DispatchQueue.main,
                   reducer: AuthViewModel.reduce
        )
    }
    
    private static func reduce(state: AuthState, event: AuthEvent) -> AuthState {
        return state
    }
}
