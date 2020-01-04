//
//  ShadowView.swift
//  MerchantNation
//
//  Created by umer hamid on 1/2/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class ShadowView: UIView {
    //Shadow
    
    
    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowOpacity: Float = 0.5 {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 3, height: 3) {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowRadius: CGFloat = 15.0 {
        didSet {
            self.updateView()
        }
    }

    //Apply params
    func updateView() {
        self.layer.shadowColor = self.shadowColor.cgColor
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowOffset = self.shadowOffset
        self.layer.shadowRadius = self.shadowRadius
    }
    
    
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


//class image : UIImage{
//    
//    @IBInspectable var cornerRadius: CGFloat = 0.0 {
//            didSet {
//                self.layer.cornerRadius = cornerRadius
//            }
//        }
//}
