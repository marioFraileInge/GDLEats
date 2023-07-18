//
//  FilterItem.swift
//  GDLEats
//
//  Created by Mario AFH on 17/07/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//

import Foundation

struct FilterItem {
    let filter: String?
    let name: String?
    init(dict: [String: String]) {
        self.filter = dict["filter"]
        self.name = dict["name"]
    }
}
