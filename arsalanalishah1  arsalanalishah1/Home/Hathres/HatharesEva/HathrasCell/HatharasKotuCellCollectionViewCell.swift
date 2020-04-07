//
//  HatharasKotuCellCollectionViewCell.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/21/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class HatharasKotuCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var container: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        container.layer.cornerRadius = 5
    }

}
