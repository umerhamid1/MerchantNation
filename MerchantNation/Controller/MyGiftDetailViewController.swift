//
//  MyGiftDetailViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class MyGiftDetailViewController: UIViewController {

    @IBOutlet weak var myGiftImag: UIImageView!
    
    @IBOutlet weak var myGiftPrice: UILabel!
    @IBOutlet weak var myGiftName: UILabel!
    
    @IBOutlet weak var myGiftDescription: UILabel!
    
    var image = UIImage()
    var price = ""
    var name = ""
    var descriptions = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true
        )
    }
    
    
    @IBOutlet weak var addToCartPressed: RoundUIView!
    

}
