//
//  AccountContainerViewController.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/21/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class AccountContainerViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scontainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: scontainer.frame.size.width * CGFloat(integerLiteral: 2), height: scontainer.frame.height)

        let x = UIScreen.main.bounds.width * CGFloat(integerLiteral: 0)
        let frameVC = CGRect(x: x, y: 0, width: scontainer.frame.width, height: scontainer.frame.height)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let eventVC = storyboard.instantiateViewController(withIdentifier: String(describing: LoginViewController.self)) as! LoginViewController
        eventVC.view.frame = frameVC
        eventVC.willMove(toParent: self)
        addChild(eventVC)
        eventVC.didMove(toParent: self)
        scrollView.addSubview(eventVC.view)
        
        let frameVC2 = CGRect(x: UIScreen.main.bounds.width * CGFloat(integerLiteral: 1), y: 0, width: scontainer.frame.width, height: scontainer.frame.height)
        let eventVC2 = storyboard.instantiateViewController(withIdentifier: String(describing: RegisterationViewController.self)) as! RegisterationViewController
        eventVC2.view.frame = frameVC2
        eventVC2.willMove(toParent: self)
        addChild(eventVC2)
        eventVC2.didMove(toParent: self)
        scrollView.addSubview(eventVC2.view)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            scrollView.scrollRectToVisible(CGRect(
            x: scrollView.frame.width * CGFloat(integerLiteral: 0),
            y: 0,
            width: scrollView.frame.size.width ,
            height: scrollView.frame.size.height), animated: true)
        }
        else{
            scrollView.scrollRectToVisible(CGRect(
            x: scrollView.frame.width * CGFloat(integerLiteral: 1),
            y: 0,
            width: scrollView.frame.size.width ,
            height: scrollView.frame.size.height), animated: true)
        }
    }
    
    
}
