//
//  MenuTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/11/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

//
//    @IBOutlet weak var NameLabel: UILabel!
//
//    @IBOutlet weak var priceLabel: UILabel!
//
//    @IBOutlet weak var ProfileImage: UIImageView!
//
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
