//
//  CellMyOrderLastAfterActivePastTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/15/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class CellMyOrderLastAfterActivePastTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var serviceFeeLabel: UILabel!
    
    @IBOutlet weak var promoLabel: UILabel!
    
    @IBOutlet weak var subTotalLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var mapImage: UIImageView!
    var callUs = ""
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func callUsButtonPressd(_ sender: Any) {
    }
    
    @IBAction func cancelOrderPressed(_ sender: Any) {
    }
    

}
