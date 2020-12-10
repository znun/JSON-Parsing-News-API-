//
//  Article.swift
//  Json
//
//  Created by Xunnun on 9/12/20.
//  Copyright © 2020 USER. All rights reserved.
//

import Foundation

struct Article: Codable {
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
    var publishedAT:String?
    var content:String?
}
