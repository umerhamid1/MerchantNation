//
//  MenuTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/11/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {


    @IBOutlet weak var menuImage: RoundedImageView!
     @IBOutlet weak var menuTitle: UILabel!
     @IBOutlet weak var menuDescription: UILabel!
     @IBOutlet weak var menuPrice: UILabel!
     @IBOutlet weak var myOrderCount: UILabel!
     @IBOutlet weak var subtractButton: UIButton!
     @IBOutlet weak var addButton: UIButton!
    
     
   
     var countTxt : Int = 0
     var hideShowAction: (() -> Void)? = nil

    
    
     @IBAction func addButtonPressed(_ sender: Any) {
         
         countTxt += 1
         myOrderCount.text = "\(countTxt)"
        MenuViewController.orderCount += 1
        hideShowAction?()
         
       dissableButon()
     }
     
     @IBAction func SubtractButtonPressed(_ sender: Any) {
        
         if countTxt >= 1 {
             countTxt -= 1
            MenuViewController.orderCount -= 1
             myOrderCount.text = "\(countTxt)"
            hideShowAction?()
         }
         dissableButon()
         
     }
     
     func dissableButon(){
        var vm = MenuViewController()
           
         if countTxt == 0 {
                    subtractButton.isEnabled = false
                }else{
                    subtractButton.isEnabled = true
                }
        
        

     }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        subtractButton.isEnabled = false
        countTxt  = Int(myOrderCount.text!) ?? 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
