//
//  OrderDetailsTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class OrderDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImag: UIImageView!
    @IBOutlet weak var orderName: UILabel!
    @IBOutlet weak var orderNumber: UILabel!
    
    @IBOutlet weak var orderPrice: UILabel!
    @IBOutlet weak var orderStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
