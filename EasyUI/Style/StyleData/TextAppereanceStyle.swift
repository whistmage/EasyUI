//
//  TextColorStyle.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

public struct TextAppearanceStyle {
    
    var cornerRaius: CGFloat?
    var backgroundColor: UIColor?
    var borderColor: UIColor?
    var textColor: UIColor?
    
    public init(
        cornerRaius: CGFloat?,
        backgroundColor: UIColor?,
        borderColor: UIColor?,
        textColor: UIColor?
    ) {
        self.cornerRaius = cornerRaius
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.textColor = textColor
    }
}
