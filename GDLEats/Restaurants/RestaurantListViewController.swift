//
//  RestaurantViewController.swift
//  GDLEats
//
//  Created by Mario AFH on 08/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        
import UIKit

class RestaurantListViewController: UIViewController, UICollectionViewDelegate {
    
    private let manager = RestaurantDataManager()
    
    var selectedRestaurant: RestaurantItem?
    var selectedCity: LocationItem?
    var selectedCuisine: String?
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createData()
        setupTitle()
    }
}

// MARK: Private Extension
private extension RestaurantListViewController {
    
    func createData() {
        guard let city = selectedCity?.city, let cuisine = selectedCuisine else {
            return
        }
        manager.fetch(location: city, selectedCuisine: cuisine) {
            restaurantItems in
            if !restaurantItems.isEmpty {
                collectionView.backgroundView = nil
            } else {
                let view = NoDataView(frame: CGRect(x: 0, y: 0, width: collectionView.frame.width, height: collectionView.frame.height))
                view.set(title: "Restaurants", desc: "No restaurants found.")
                collectionView.backgroundView = view
            }
            collectionView.reloadData()
        }
    }
    
    func setupTitle() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        title = selectedCity?.cityAndState.uppercased()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: UICollectionViewDataSource
extension RestaurantListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        manager.numberOfRestaurantItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath) as! RestaurantCell
        let restaurantItem = manager.restaurantItem(at: indexPath.row)
        cell.titleLabel.text = restaurantItem.name
        if let cuisine = restaurantItem.subtitle {
            cell.cuisineLabel.text = cuisine
        }
        if let imageURL = restaurantItem.imageURL {
            Task {
                guard let url = URL(string: imageURL)
                else {
                   
                    return
                }
                let (imageData, response) = try await URLSession.shared.data(from: url)
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                   

                    return
                }
                guard let cellImage = UIImage(data: imageData) else {
                    return
                }
                cell.restaurantImageView.image = cellImage
            }
        }
        return cell
    }
    
}
