//
//  Extension+UIButton.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

private var associatedObjectKey: UInt8 = 0

public extension UIButton {

    var text: String? {
        return titleLabel?.text
    }
    
    var attributes: [NSAttributedString.Key: Any] {
        get {
            return objc_getAssociatedObject(self,
                                            &associatedObjectKey
                )
                as? [NSAttributedString.Key: Any]
                ??  [NSAttributedString.Key: Any]()
        }
        set {
            objc_setAssociatedObject(self,
                                     &associatedObjectKey,
                                     newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN
            )
            setAttributedTitle(
                NSMutableAttributedString.init(
                    string: titleLabel?.text ?? "",
                    attributes: attributes
                ),
                for: state
            )
        }
    }

    func setStyledTitle(_ title: String, for state: UIButton.State) {
        setAttributedTitle(
            NSMutableAttributedString.init(
                string: title,
                attributes: attributes
            ),
            for: state
        )
    }

    func applyStyle(
        textFontStyle: TextFontStyle,
        textAppearanceStyle: TextAppearanceStyle,
        textAligment: NSTextAlignment,
        for state: UIButton.State) {
        if let textColor = textAppearanceStyle.textColor {
            setTitleColor(textColor, for: state)
            attributes[.foregroundColor] = textColor
        }
        if let backgroundColor = textAppearanceStyle.backgroundColor {
            setBackgroundColor(color: backgroundColor, forState: state)
        }
        if let cornerRadius = textAppearanceStyle.cornerRaius {
            layer.cornerRadius = cornerRadius
        }
        if let borderColor = textAppearanceStyle.borderColor?.cgColor {
            layer.borderWidth = 1
            layer.borderColor = borderColor
        }
        titleLabel?.font = textFontStyle.font
        if let letterSpacing = textFontStyle.letterSpacing {
            attributes[.kern] = letterSpacing
        }
        if let lineSpacing = textFontStyle.lineSpacing {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineSpacing
            attributes[.paragraphStyle] = paragraphStyle
        }
        titleLabel?.textAlignment = textAligment
    }

    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
        self.clipsToBounds = true
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            self.setBackgroundImage(colorImage, for: forState)
        }
    }
}
