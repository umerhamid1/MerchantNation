//
//  RoundedButton.swift
//  MerchantNation
//
//  Created by umer hamid on 1/3/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import Foundation

import UIKit


@IBDesignable class RoundedButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleButton()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        styleButton()
    }
    
    func styleButton() {
        layer.cornerRadius = frame.size.height / 2
    }
    

        @IBInspectable var borderWidth: CGFloat {
            set {
                layer.borderWidth = newValue
            }
            get {
                return layer.borderWidth
            }
        }

        @IBInspectable var cornerRadius: CGFloat {
            set {
                layer.cornerRadius = newValue
            }
            get {
                return layer.cornerRadius
            }
        }

        @IBInspectable var borderColor: UIColor? {
            set {
                guard let uiColor = newValue else { return }
                layer.borderColor = uiColor.cgColor
            }
            get {
                guard let color = layer.borderColor else { return nil }
                return UIColor(cgColor: color)
            }
        }
    
}
