//
//  OnboardingView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import CombineFeedbackUI

struct OnboardingView: View {
    typealias State = OnboardingState
    typealias Event = OnboardingEvent
    
    private let context: Context<OnboardingState, OnboardingEvent>
    
    init(context: Context<OnboardingState, OnboardingEvent>) {
        self.context = context
    }

    
    var body: some View {
        Text("Onboarding view")
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Widget(viewModel: OnboardingViewModel(initial: OnboardingState()), render: OnboardingView.init)
    }
}
