//
//  HomeViewModel.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-20.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine
import CombineFeedback
import CombineFeedbackUI

final class HomeViewModel: ViewModel<HomeState, HomeEvent> {
    init(initial: HomeState) {
        super.init(initial: initial,
                   feedbacks: [],
                   scheduler: DispatchQueue.main,
                   reducer: HomeViewModel.reduce
        )
    }
    
    private static func reduce(state: HomeState, event: HomeEvent) -> HomeState {
        return state
    }

}
