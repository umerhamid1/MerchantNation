//
//  OfferAndPromotionDetailsViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class OfferAndPromotionDetailsViewController: UIViewController {

    
    @IBOutlet weak var offerImage: UIImageView!
    
    @IBOutlet weak var discountDiscrptionLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    
    @IBOutlet weak var offerDiscriptionLabel: UILabel!
    @IBOutlet weak var offerPriceLabel: UILabel!
    @IBOutlet weak var offerNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
           
           self.navigationController?.popViewController(animated: true)
       }
       


}
