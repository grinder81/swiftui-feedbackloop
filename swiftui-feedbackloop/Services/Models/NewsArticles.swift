//
//  NewsArticles.swift
//  swiftui-mvvm
//
//  Created by MD AL MAMUN (LCL) on 2019-11-15.
//  Copyright © 2019 MD AL MAMUN. All rights reserved.
//

import Foundation

struct NewsArticles: Identifiable, Decodable, Hashable {
    let id = UUID()
    
    var source: NewsSource
    var author: String?
    var title: String?
    var description: String?
}
