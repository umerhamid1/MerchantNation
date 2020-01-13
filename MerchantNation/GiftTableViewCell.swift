//
//  GiftTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class GiftTableViewCell: UITableViewCell {

    
    @IBOutlet weak var giftImage: UIImageView!
    
    @IBOutlet weak var giftPrice: UILabel!
    @IBOutlet weak var giftName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
