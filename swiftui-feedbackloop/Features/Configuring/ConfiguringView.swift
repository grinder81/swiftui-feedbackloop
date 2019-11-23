//
//  ConfiguringView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-20.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import CombineFeedback
import CombineFeedbackUI

struct ConfiguringView: View {
    typealias State = ConfiguringState
    typealias Event = ConfiguringEvent
    
    private let context: Context<ConfiguringState, ConfiguringEvent>
    
    init(context: Context<ConfiguringState, ConfiguringEvent>) {
        self.context = context
    }

    var body: some View {
        return Activity(isAnimating: .constant(true), style: .medium)
    }
}

struct ConfiguringView_Previews: PreviewProvider {
    static var previews: some View {
        Widget(viewModel: ConfiguringViewModel(initial: ConfiguringState(), store: Store()), render: ConfiguringView.init)
    }
}
