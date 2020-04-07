//
//  ImageSlideShowTableViewCell.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/21/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit
import ImageSlideshow

class ImageSlideShowTableViewCell: UITableViewCell {
    @IBOutlet weak var imageSlideShow: ImageSlideshow!
    
    let localSource = [BundleImageSource(imageString: "img1"), BundleImageSource(imageString: "img2"), BundleImageSource(imageString: "img3")]

    
    override func awakeFromNib() {
        super.awakeFromNib()
         imageSlideShow.slideshowInterval = 5.0
        imageSlideShow.pageIndicatorPosition = .init(horizontal: .center, vertical: .bottom)
               imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor(named: "selectedColoe")
        pageControl.pageIndicatorTintColor = UIColor(named: "NormalColor")
        imageSlideShow.pageIndicator = pageControl
        
        imageSlideShow.activityIndicator = DefaultActivityIndicator()
        imageSlideShow.setImageInputs(localSource)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
