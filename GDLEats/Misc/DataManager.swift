//
//  DataManager.swift
//  GDLEats
//
//  Created by Mario AFH on 16/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
    
import Foundation

protocol DataMananger {
    func loadPlist(file name: String) -> [[String: AnyObject]]
}

extension DataMananger {
    func loadPlist(file name: String) -> [[String: AnyObject]] {
        guard let path = Bundle.main.path(forResource: name, ofType: "plist"),
              let itemsData = FileManager.default.contents(atPath: path),
              let items = try! PropertyListSerialization.propertyList(from: itemsData, format: nil)
                as? [[String: AnyObject]] else{
            return [[:]]
        }
        return items
    }
}
