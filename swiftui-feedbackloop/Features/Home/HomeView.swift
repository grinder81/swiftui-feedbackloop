//
//  HomeView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import CombineFeedbackUI

struct HomeView: View {
    typealias State = HomeState
    typealias Event = HomeEvent
    
    private let context: Context<HomeState, HomeEvent>
    
    init(context: Context<HomeState, HomeEvent>) {
        self.context = context
    }

    var body: some View {
        Text("Home view!")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Widget(viewModel: HomeViewModel(initial: HomeState()), render: HomeView.init)
    }
}
