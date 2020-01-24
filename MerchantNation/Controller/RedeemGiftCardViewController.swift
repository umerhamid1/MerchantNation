//
//  RedeemGiftCardViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class RedeemGiftCardViewController: UIViewController {
    
    var i = 0
    @IBOutlet weak var giftTableView: UITableView!
    @IBOutlet weak var sideMenuButton: UIButton!
    
    @IBOutlet weak var giftSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.giftTableView.separatorStyle = .none
        
        
        
        slideMenu()
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
        
        giftSegment.layer.borderWidth = 1.0
        giftSegment.layer.cornerRadius = 5.0
        giftSegment.layer.borderColor = UIColor.green.cgColor
        giftSegment.layer.masksToBounds = true
        giftSegment.backgroundColor = .white
        
       
        
        // Do any additional setup after loading the view.
    }
    
    private func slideMenu(){
         if revealViewController() != nil{
            // sideMenuButton.target = revealViewController()
           //  sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
              sideMenuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
             revealViewController()?.rearViewRevealWidth = 280
             
             view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
             
             
            

         }
     }
    
    
    
    @IBAction func orderSegmentPressed(_ sender: Any) {
        
        switch giftSegment.selectedSegmentIndex
        {
        case 0:
            i = 0
            
            self.giftTableView.reloadData()
        //textLabel.text = "First Segment Selected"
        case 1:
            i = 1
            self.giftTableView.reloadData()
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
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           if i == 0 {
               return 223
           }else {
               return 150
           }
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if i == 0{
            
        }else{
            performSegue(withIdentifier: "goToMyGiftDetails", sender: self)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // OrderdCell
        if i == 0{
            
            let cell = giftTableView.dequeueReusableCell(withIdentifier: "GiftCardCell", for: indexPath) as!
            GiftTableViewCell
            
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = giftTableView.dequeueReusableCell(withIdentifier: "myGiftCell", for: indexPath) as!
            MyGiftTableViewCell
            
            cell.selectionStyle = .none
            return cell
        }
       
        //        cell.giftImage.image = UIImage()
        //        cell.giftName.text = ""
        //        cell.giftPrice.text = ""
        //
        
        
        
     
    }
    
    
}
