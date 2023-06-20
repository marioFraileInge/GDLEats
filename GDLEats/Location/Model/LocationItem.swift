//
//  LocationItem.swift
//  GDLEats
//
//  Created by Mario AFH on 19/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//

import Foundation

struct LocationItem: Equatable {
    let city: String?
    let state: String?
}

extension LocationItem {
    init(dict: [String: String]) {
        self.city  = dict["city"]
        self.state = dict["state"]
    }
    var cityAndState: String {
        guard let city = self.city, let state = self.state else {
            return ""
        }
        return "\(city), \(state)"
    }
}
