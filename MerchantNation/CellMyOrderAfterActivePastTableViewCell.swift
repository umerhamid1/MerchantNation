//
//  CellMyOrderAfterActivePastTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/15/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class CellMyOrderAfterActivePastTableViewCell: UITableViewCell {

    @IBOutlet weak var myOrderImage: RoundedImageView!
    @IBOutlet weak var myOrderTitle: UILabel!
    @IBOutlet weak var myOrderDescription: UILabel!
    @IBOutlet weak var myOrderPrice: UILabel!
    @IBOutlet weak var myOrderCount: UILabel!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
   
    var countTxt : Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
         countTxt  = Int(myOrderCount.text!) ?? 0

        
    }
   
    @IBAction func addButtonPressed(_ sender: Any) {
        countTxt += 1
        myOrderCount.text = "\(countTxt)"
        
        
      dissableButon()
    }
    
    @IBAction func SubtractButtonPressed(_ sender: Any) {
        if countTxt > 1 {
            countTxt -= 1
            myOrderCount.text = "\(countTxt)"
        }
        dissableButon()
        
    }
    
    func dissableButon(){
        if countTxt == 1 {
                   subtractButton.isEnabled = false
               }else{
                   subtractButton.isEnabled = true
               }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
