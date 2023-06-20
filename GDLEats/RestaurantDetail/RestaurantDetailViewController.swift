//
//  RestaurantDetailViewController.swift
//  GDLEats
//
//  Created by Mario AFH on 16/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        

import UIKit

class RestaurantDetailViewController: UITableViewController {
    
    var selectedRestaurant: RestaurantItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
    }

    
}
