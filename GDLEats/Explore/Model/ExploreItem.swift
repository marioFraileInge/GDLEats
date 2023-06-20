//
//  ExploreItem.swift
//  GDLEats
//
//  Created by Mario AFH on 12/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        

import Foundation

struct ExploreItem {
    let name: String?
    let image: String?
    
}

extension ExploreItem {
    init(dict: [String: String]) {
        self.name = dict["name"]
        self.image = dict["image"]
    }
}
