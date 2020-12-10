//
//  Newsfeed.swift
//  Json
//
//  Created by Xunnun on 9/12/20.
//  Copyright © 2020 USER. All rights reserved.
//

import Foundation

struct NewsFeed: Codable
{
    var status:String = ""
    var totalResults:Int = 0
    var articles:[Article]?
    
}
