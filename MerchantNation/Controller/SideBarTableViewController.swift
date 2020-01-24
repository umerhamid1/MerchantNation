//
//  SideBarTableViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/18/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class SideBarTableViewController: UITableViewController {

  @IBOutlet weak var imageView: UIImageView!
     @IBOutlet weak var userName: UILabel!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         self.imageView.layer.borderWidth = 1.0
         self.imageView.layer.masksToBounds = true
         self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
         self.imageView.clipsToBounds = true
        // self.userName.text =  staticLinkers.currentUser?.name
     }

}
