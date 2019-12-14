//
//  NewsTopheadlinResponse.swift
//  swiftui-mvvm
//
//  Created by MD AL MAMUN (LCL) on 2019-11-15.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct NewsTopheadlineResponse: Decodable, Hashable {
    var articles: [NewsArticles]
}
