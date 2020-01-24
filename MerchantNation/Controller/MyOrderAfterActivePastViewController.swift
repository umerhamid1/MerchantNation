//
//  MyOrderAfterActivePastViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/15/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class MyOrderAfterActivePastViewController: UIViewController {

    
    @IBOutlet weak var myOrderTableView: UITableView!
    
    var arr = [2]
    var i = 1
    var arrLen = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        arrLen = arr.count
        // Do any additional setup after loading the view.
        
        self.myOrderTableView.estimatedRowHeight = 150
        self.myOrderTableView.rowHeight = UITableView.automaticDimension
        self.myOrderTableView.separatorStyle = .none
        
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
    
        self.navigationController?.popViewController(animated: true)
    }
    


}

extension MyOrderAfterActivePastViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return arr.count + 1
        
    }
    

    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//           if i == arrLen
//            {
//               return 356
//           }else {
//               return 140
//           }
//       }
 
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if i  == 0{
//
//        }else{
//            performSegue(withIdentifier: "goToMyGiftDetails", sender: self)
//        }
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // OrderdCell
        if i <= arrLen{
            i += 1
            let cell = myOrderTableView.dequeueReusableCell(withIdentifier: "OrderCounterCell", for: indexPath) as!
            CellMyOrderAfterActivePastTableViewCell
            
       
        

            cell.selectionStyle = .none
            return cell
        }
        else{
            i = 1
            
            let cell = myOrderTableView.dequeueReusableCell(withIdentifier: "myOrderLastCell", for: indexPath) as!
            CellMyOrderLastAfterActivePastTableViewCell

            cell.selectionStyle = .none
            return cell
        }
       
        
        
     
    }
}

