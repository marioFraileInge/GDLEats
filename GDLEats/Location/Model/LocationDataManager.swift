//
//  LocalizationDataManager.swift
//  GDLEats
//
//  Created by Mario AFH on 15/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//

import Foundation

class LocationDataManager: DataMananger {
    
    private var locations: [LocationItem] = []
    
    private func loadData() -> [[String: String]] {
        let decoder = PropertyListDecoder()
        if let path = Bundle.main.path(forResource: "Locations", ofType: "plist"),
           let locationsData = FileManager.default.contents(atPath: path),
           let locations = try? decoder.decode([[String: String]].self, from: locationsData) {
            return locations
        }
        return [[:]]
    }
    
    func fetch() {
        for location in loadData(){
            locations.append(LocationItem(dict: location))
        }
    }
    
    func numberOfLocationsItems() -> Int {
        locations.count
    }
    
    func locationItem(at index: Int) -> LocationItem {
        locations[index]
    }
    
    
}
