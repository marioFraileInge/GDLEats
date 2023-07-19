//
//  ExploreCell.swift
//  GDLEats
//
//  Created by Mario AFH on 12/06/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        

import UIKit

class ExploreCell: UICollectionViewCell {
    
    @IBOutlet weak var exploreImageView: UIImageView!
    @IBOutlet weak var exploreNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        exploreImageView.layer.cornerRadius = 9
        exploreImageView.layer.masksToBounds = true
    }
}
