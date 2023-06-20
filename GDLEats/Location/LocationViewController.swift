//
//  LocationViewController.swift
//  GDLEats
//
//  Created by Mario AFH on 15/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        
import UIKit

class LocationViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let manager = LocationDataManager()
    var selectedCity: LocationItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()
    }
    
    private func setCheckmark(for cell: UITableViewCell, location: LocationItem) {
        if selectedCity == location {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        manager.numberOfLocationsItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
           withIdentifier: "locationCell", for: indexPath)
        let location = manager.locationItem(at: indexPath.row )
        cell.textLabel?.text = location.cityAndState
        setCheckmark(for: cell, location: location)
           return cell
    }
}

//MARK: UITableViewDelegate
extension LocationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
            selectedCity = manager.locationItem(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

