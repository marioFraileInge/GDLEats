//
//  Device.swift
//  GDLEats
//
//  Created by Mario AFH on 18/07/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        
import UIKit

enum Device {
    static var isPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
    static var isPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
}
