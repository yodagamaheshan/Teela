//
//  ExploreTableViewCell.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/20/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class ExploreTableViewCell: UITableViewCell {
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var textContainer: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
