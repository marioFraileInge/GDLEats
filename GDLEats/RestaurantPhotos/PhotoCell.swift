//
//  PhotoCell.swift
//  GDLEats
//
//  Created by Mario AFH on 18/07/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
        

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet var imgReview: UIImageView!
}

extension PhotoCell {
    func set(image:UIImage) {
        imgReview.image = image
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        imgReview.layer.cornerRadius = 9
        imgReview.layer.masksToBounds = true
    }
}
