//
//  UIViewExtensions.swift
//  Superhero_IOS
//
//  Created by Mañanas on 27/5/25.
//

import Foundation
import UIKit

extension UIView {
    func setBorder(width: CGFloat, withColor color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
