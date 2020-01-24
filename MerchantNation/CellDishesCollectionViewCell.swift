//
//  CellDishesCollectionViewCell.swift
//  MerchantNation
//
//  Created by umer hamid on 1/16/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class CellDishesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var underlineImage: UIImageView!
    
    override var isSelected: Bool {
        didSet {
            // set color according to state
           // self.backgroundColor = self.isSelected ? .blue : .clear
            underlineImage.image = self.isSelected ? UIImage(named: "BlackLine") : UIImage(named: "")
        }
    }
    
    @IBAction func ok(){
    
    }
    
}
