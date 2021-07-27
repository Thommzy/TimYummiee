//
//  UIView+Extensions.swift
//  TimYummie
//
//  Created by Tim on 24/03/2021.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get{return cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
