//
//  HomeView.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI
import Combine
import CombineFeedbackUI

struct HomeView: View {
    @EnvironmentObject var appState: AppState
    
    enum Tab: Int {
        case first
        case second
        case third
        case fourth
    }
    
    @State private var tabSelection: Tab = .second
    
    private let context: Context<HomeState, HomeEvent>
    
    init(context: Context<HomeState, HomeEvent>) {
        self.context = context
    }

    var body: some View {
        TabView (selection: $tabSelection) {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
            }.tag(Tab.first)
            
            Text("The Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
            }.tag(Tab.second)
            
            Text("The Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
            }.tag(Tab.third)
            
            Text("The Fourth Tab")
                .tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Fourth")
            }.tag(Tab.fourth)
        }
        .font(.headline)
    }
}

extension HomeView {
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Widget(viewModel: HomeViewModel(initial: HomeState()), render: HomeView.init)
            .environmentObject(AppState())
    }
}
