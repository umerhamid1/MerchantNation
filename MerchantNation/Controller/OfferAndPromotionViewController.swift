//
//  OfferAndPromotionViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class OfferAndPromotionViewController: UIViewController {

    
    @IBOutlet weak var offerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.offerTableView.separatorStyle = .none
       
          
        
               //self.hidesBottomBarWhenPushed = true
               
           
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    


}

extension OfferAndPromotionViewController : UITableViewDelegate , UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.offerTableView.dequeueReusableCell(withIdentifier: "OfferAndPromotionCell", for: indexPath) as!
                  OfferAndPromotionTableViewCell
                  
                  cell.selectionStyle = .none
                  return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToOfferDetails", sender: self)

    }
    
    
}
