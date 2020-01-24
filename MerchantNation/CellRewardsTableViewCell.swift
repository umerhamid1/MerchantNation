//
//  CellRewardsTableViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/14/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class CellRewardsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var rewardImage: UIImageView!
    
    @IBOutlet weak var rewardPrice: UILabel!
    @IBOutlet weak var rewardName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
