//
//  ComplexView.swift
//  ProAdvice
//
//  Created by xiao long on 2020/6/24.
//  Copyright © 2020 organizein. All rights reserved.
//

import UIKit

class ComplexView: UIView {
    @IBInspectable var borderColor: UIColor = UIColor.clear
    @IBInspectable var backColor: UIColor = UIColor.white
    @IBInspectable var shadowColor: UIColor = UIColor.clear
    @IBInspectable var borderWidth: CGFloat = 0.5
    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var shadowOpacity: Float = 1
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backColor
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = .zero
    }
}
