//
//  OnboardingViewModel.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-20.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation
import Combine
import CombineFeedback
import CombineFeedbackUI

final class OnboardingViewModel: ViewModel<OnboardingState, OnboardingEvent> {
    init(initial: OnboardingState) {
        super.init(initial: initial,
                   feedbacks: [],
                   scheduler: DispatchQueue.main,
                   reducer: OnboardingViewModel.reduce
        )
    }
    
    private static func reduce(state: OnboardingState, event: OnboardingEvent) -> OnboardingState {
        return state
    }
}
