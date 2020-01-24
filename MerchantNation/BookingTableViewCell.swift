//
//  BookingTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/22/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class BookingTableViewCell: UITableViewCell {

    @IBOutlet weak var bookingName: UILabel!
    @IBOutlet weak var bookingNo: UILabel!
    @IBOutlet weak var bookingDate: UILabel!
    @IBOutlet weak var bookingStatus: UILabel!
    
    @IBOutlet weak var bookingGuest: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
