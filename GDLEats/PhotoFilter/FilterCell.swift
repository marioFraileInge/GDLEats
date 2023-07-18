//
//  FilterCell.swift
//  GDLEats
//
//  Created by Mario AFH on 18/07/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        

import UIKit

class FilterCell: UICollectionViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 9
        thumbnailImageView.layer.masksToBounds = true
    }
    
}

extension FilterCell: ImageFiltering {
    
    func set(filterItem: FilterItem, imageForThumbnail: UIImage) {
        nameLabel.text = filterItem.name
        if let filter = filterItem.filter {
            if filter != "None" {
                let filteredImage = apply(filter: filter, originalImage: imageForThumbnail)
                thumbnailImageView.image = filteredImage
            } else {
                thumbnailImageView.image = imageForThumbnail
            }
        }
    }
}
