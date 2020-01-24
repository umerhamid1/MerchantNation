//
//  RequestSentViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/23/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class RequestSentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToHomePressed(_ sender: Any) {
        

         self.tabBarController?.selectedIndex = 0
        self.navigationController?.popToRootViewController(animated: true)
       
    }
    


}
