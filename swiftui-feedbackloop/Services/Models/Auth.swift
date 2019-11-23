//
//  Auth.swift
//  swiftui-feedbackloop
//
//  Created by MD AL MAMUN (LCL) on 2019-11-19.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct Auth: Decodable, Identifiable, Hashable {
    let id = UUID()
    let accessToken: String
    let refreshToken: String
}
