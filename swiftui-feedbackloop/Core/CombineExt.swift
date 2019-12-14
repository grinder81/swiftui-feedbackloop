//
//  CombineExt.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-26.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Combine

class CancelBag {
    var subscriptions = Set<AnyCancellable>()
}

extension AnyCancellable {
    static var cancelled: AnyCancellable {
        let cancellable = AnyCancellable({ })
        cancellable.cancel()
        return cancellable
    }
    
    func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}
