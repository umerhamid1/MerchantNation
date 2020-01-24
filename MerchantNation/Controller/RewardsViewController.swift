//
//  RewardsViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController {

    
    @IBOutlet weak var rewardTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
 

}
extension RewardsViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 5
        
    }
    

  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            performSegue(withIdentifier: "goToRewardDetails", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // OrderdCell
       
            
            let cell = rewardTableView.dequeueReusableCell(withIdentifier: "RewardCell", for: indexPath) as!
            CellRewardsTableViewCell
            
            cell.selectionStyle = .none
            return cell
     
        
        
        
        
     
    }
    
    
}
