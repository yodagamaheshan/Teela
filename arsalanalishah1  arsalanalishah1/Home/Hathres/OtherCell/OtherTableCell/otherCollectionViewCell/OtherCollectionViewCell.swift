//
//  OtherCollectionViewCell.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/21/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class OtherCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var textContainer: UIView!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var container: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textContainer.layer.cornerRadius = 4
        image.layer.cornerRadius = 4
        container.layer.cornerRadius = 4
    }

}
