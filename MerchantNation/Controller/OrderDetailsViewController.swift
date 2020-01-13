//
//  OrderDetailsViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController {
    
    @IBOutlet weak var orderTableView: UITableView!
    
    @IBOutlet weak var orderSegment: UISegmentedControl!
    
   // @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.orderTableView.separatorStyle = .none
        
        
        
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
        
        orderSegment.layer.borderWidth = 1.0
        orderSegment.layer.cornerRadius = 5.0
        orderSegment.layer.borderColor = UIColor.green.cgColor
        orderSegment.layer.masksToBounds = true
        orderSegment.backgroundColor = .white
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func orderSegmentPressed(_ sender: Any) {
        
        switch orderSegment.selectedSegmentIndex
        {
        case 0: break
            //textLabel.text = "First Segment Selected"
        case 1: break
           // textLabel.text = "Second Segment Selected"
        default:
            break
        }
    }
    
    
    
}

extension OrderDetailsViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // OrderdCell
        let cell = orderTableView.dequeueReusableCell(withIdentifier: "OrderdCell", for: indexPath) as!
        OrderDetailsTableViewCell
        
        cell.selectionStyle = .none
        //        cell.orderName.text = ""
        //        cell.orderPrice.text = ""
        //        cell.orderNumber.text = ""
        //        cell.orderStatus.text = ""
        //        cell.profileImag.image = UIImage()
        
        
        
        return cell
    }
    
    
}
