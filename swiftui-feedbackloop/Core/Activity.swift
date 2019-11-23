//
//  Activity.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-22.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import SwiftUI


struct Activity: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    
    @Binding var isAnimating: Bool
    var style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<Activity>) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: style)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Activity>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

#if DEBUG
struct Activity_Previews : PreviewProvider {
    static var previews: some View {
        Activity(isAnimating: .constant(true), style: .large)
    }
}
#endif
