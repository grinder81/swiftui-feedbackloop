//
//  APIServiceError.swift
//  swiftui-mvvm
//
//  Created by MD AL MAMUN (LCL) on 2019-11-15.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

enum APIServiceError: Error {
    case urlError
    case responseError
    case parseError(Error)
}
