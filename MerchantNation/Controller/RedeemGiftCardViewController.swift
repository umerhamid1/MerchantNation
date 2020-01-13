//
//  RedeemGiftCardViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class RedeemGiftCardViewController: UIViewController {
    
    @IBOutlet weak var giftTableView: UITableView!
    
    @IBOutlet weak var giftSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.giftTableView.separatorStyle = .none
        
        
        
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
        
        giftSegment.layer.borderWidth = 1.0
        giftSegment.layer.cornerRadius = 5.0
        giftSegment.layer.borderColor = UIColor.green.cgColor
        giftSegment.layer.masksToBounds = true
        giftSegment.backgroundColor = .white
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func orderSegmentPressed(_ sender: Any) {
        
        switch giftSegment.selectedSegmentIndex
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

extension RedeemGiftCardViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // OrderdCell
        let cell = giftTableView.dequeueReusableCell(withIdentifier: "GiftCardCell", for: indexPath) as!
        GiftTableViewCell
        
        cell.selectionStyle = .none
        //        cell.giftImage.image = UIImage()
        //        cell.giftName.text = ""
        //        cell.giftPrice.text = ""
        //
        
        
        
        
        return cell
    }
    
    
}
