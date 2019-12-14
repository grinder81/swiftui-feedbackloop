//
//  AppViewModel.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine
import CombineFeedback
import CombineFeedbackUI


final class ConfiguringViewModel: ViewModel<ConfiguringState, ConfiguringEvent> {
    init(initial: ConfiguringState, appState: AppState) {
        super.init(initial: initial,
                   feedbacks: [
                    ConfiguringViewModel.willCheckAuthentication(),
                    ConfiguringViewModel.willChangeAppState(appState)],
                   scheduler: DispatchQueue.main,
                   reducer: ConfiguringViewModel.reduce
        )
    }
    
    static func willChangeAppState(_ appState: AppState) -> Feedback<ConfiguringState, ConfiguringEvent> {
        return Feedback(effects: { (state) -> AnyPublisher<ConfiguringEvent, Never> in
            if case ConfiguringStatus.loaded(let auth) = state.status {
                switch auth {
                case true:
                    appState.status = .launching(HomeState())
                default:
                    appState.status = .authenticating(AuthState())
                }
            }
            return Empty().eraseToAnyPublisher()
        })
    }
    
    static func willCheckAuthentication() -> Feedback<ConfiguringState, ConfiguringEvent> {
        return Feedback(effects: { (state) -> AnyPublisher<ConfiguringEvent, Never> in
            guard state.status == ConfiguringStatus.loading else {
                return Empty().eraseToAnyPublisher()
            }
            
            // Fake response
            return Just<ConfiguringEvent>(.didFinish(true))
                .delay(for: 3, scheduler: DispatchQueue.main)
                .eraseToAnyPublisher()
        })
    }
    
    private static func reduce(state: ConfiguringState, event: ConfiguringEvent) -> ConfiguringState {
        switch event {
        case .didFinish(let auth):
            return state.set(\.status, .loaded(auth))
        }
    }
}
