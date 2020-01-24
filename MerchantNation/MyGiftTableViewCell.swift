//
//  MyGiftTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class MyGiftTableViewCell: UITableViewCell {

    @IBOutlet weak var giftImage: UIImageView!
    
    @IBOutlet weak var giftName: UILabel!
    
    @IBOutlet weak var giftDescription: UITextView!
    
    @IBOutlet weak var giftShareButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
