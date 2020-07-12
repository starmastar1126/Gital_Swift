//
//  ComplexButton.swift
//  ProAdvice
//
//  Created by xiao long on 2020/6/24.
//  Copyright © 2020 organizein. All rights reserved.
//

import UIKit

class ComplexButton: UIButton {
    @IBInspectable var borderColor: UIColor = UIColor.clear
    @IBInspectable var borderWidth: CGFloat = 0
    @IBInspectable var cornerRadius: CGFloat = 0
    @IBInspectable var shadowColor: UIColor = UIColor.clear
    @IBInspectable var shadowOpacity: Float = 1
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = .zero
    }
}
