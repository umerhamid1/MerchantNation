//
//  FamilyDealsViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/6/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class FamilyDealsViewController
: UIViewController , IndicatorInfoProvider {
    
    
    
    
    @IBOutlet weak var testLabel: UILabel!
    var childNumber = ""
    
    @IBOutlet weak var testtableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = childNumber
        // Do any additional setup after loading the view.
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
         return IndicatorInfo(title: "\(childNumber)")
    }
    


 

}

extension FamilyDealsViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = testtableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as!
        MenuTableViewCell


//          cell.NameLabel.text = "Name"
//          cell.priceLabel.text = "price"

        //   cell.textLabel?.text = self.items[indexPath.row]

           return cell
    }
    
    
}
