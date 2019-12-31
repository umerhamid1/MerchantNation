//
//  RoundedUIView.swift
//  MerchantNation
//
//  Created by umer hamid on 12/31/19.
//  Copyright © 2019 umer hamid. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class RoundUIView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
