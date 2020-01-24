//
//  AddToCartViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/22/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class AddToCartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func addCartPressed(_ sender: Any) {
        //self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    

}
