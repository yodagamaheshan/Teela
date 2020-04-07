//
//  ViewController.swift
//  arsalanalishah1  arsalanalishah1
//
//  Created by Heshan Yodagama on 2/20/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: String(describing: HatharesTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HatharesTableViewCell.self))
        
        tableView.register(UINib(nibName: String(describing: OtherTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: OtherTableViewCell.self))
        
        tableView.register(UINib(nibName: String(describing: HeaderTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HeaderTableViewCell.self))
        
         tableView.register(UINib(nibName: String(describing: ImageSlideShowTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: ImageSlideShowTableViewCell.self))

    }
    
    
}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        30
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
           return  tableView.dequeueReusableCell(withIdentifier: String(describing: ImageSlideShowTableViewCell.self), for: indexPath)
        }
        else if( indexPath.section == 1){
            return tableView.dequeueReusableCell(withIdentifier: String(describing: HatharesTableViewCell.self), for: indexPath)
        }
        else{
            return tableView.dequeueReusableCell(withIdentifier: String(describing: OtherTableViewCell.self), for: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 184
        }
        else if( indexPath.section == 1){
            return 150
        }
        else{
            return 270
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section != 0, section != 1{
        return tableView.dequeueReusableCell(withIdentifier: String(describing: HeaderTableViewCell.self))
        }else{
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(named: "backgroundColor")
        return view
    }
        
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       if section == 0 || section == 1{
        return 1
        }else{
            return 50
        }
    }

}
