//
//  FamilyDealsViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/6/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class FamilyDealsViewController:  UIViewController , IndicatorInfoProvider {
    
    
    
    
    @IBOutlet weak var testLabel: UILabel!
    var childNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = childNumber
        // Do any additional setup after loading the view.
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
         return IndicatorInfo(title: "\(childNumber)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
