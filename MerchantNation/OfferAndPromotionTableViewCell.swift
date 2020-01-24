//
//  OfferAndPromotionTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class OfferAndPromotionTableViewCell: UITableViewCell {

    @IBOutlet weak var offerImage: UIImageView!
   
    @IBOutlet weak var offerDescription: UILabel!
    
    
    @IBOutlet weak var offerDiscount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
