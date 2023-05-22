//
//  UIView+Extension.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 1.04.2023.//

import UIKit

extension UIView {
    
  @IBInspectable var cornerRadius: CGFloat {
      get {return cornerRadius}
        set { self.layer.cornerRadius = newValue}
    }
    
}

