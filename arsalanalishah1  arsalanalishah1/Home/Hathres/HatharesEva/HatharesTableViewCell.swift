//
//  HatharesTableViewCell.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/21/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class HatharesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: String(describing: HatharasKotuCellCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: HatharasKotuCellCollectionViewCell.self))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension HatharesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       return  collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HatharasKotuCellCollectionViewCell.self), for: indexPath) as! HatharasKotuCellCollectionViewCell
    }
    

    
}
