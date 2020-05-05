//
//  PhotoCollectionViewCell.swift
//  Virtual Tour
//
//  Created by Claudia Contreras on 5/4/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var contentLoader: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var highlightIndicator: UIView!
    
    override var isHighlighted: Bool {
        didSet {
            highlightIndicator.isHidden = !isHighlighted
        }
    }
    
    override var isSelected: Bool {
        didSet {
            highlightIndicator.isHidden = !isSelected
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentLoader.layer.cornerRadius = 10
        contentLoader.layer.masksToBounds = true
        self.backgroundColor = .darkGray
        activityIndicator.transform = CGAffineTransform(scaleX: 2, y: 2)
        //highlightIndicator.isHidden = true
    }
}
