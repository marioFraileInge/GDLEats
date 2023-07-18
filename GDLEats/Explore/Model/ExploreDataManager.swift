//
//  ExploreDataManager.swift
//  GDLEats
//
//  Created by Mario AFH on 12/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        
import Foundation

class ExploreDataManager: DataManager {
    
    private var exploreItems: [ExploreItem] = []
    
    func fetch() {
        for data in loadPlist(file: "ExploreData") {
            exploreItems.append(ExploreItem(dict: data as! [String: String]))
        }
    }
    
    func numberOfExploreItems() -> Int {
       exploreItems.count
    }
    
    func exploreItem(at index: Int) -> ExploreItem {
       exploreItems[index]
    }
}
