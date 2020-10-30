//
//  Extension+UILabel.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

private var associatedObjectKey: UInt8 = 0

extension UILabel {

    var attributes: [NSAttributedString.Key: Any] {
        get {
            return objc_getAssociatedObject(self, &associatedObjectKey)
                as? [NSAttributedString.Key: Any]
                ??  [NSAttributedString.Key: Any]()
        }
        set {
            objc_setAssociatedObject(self,
                                     &associatedObjectKey,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN
            )
            attributedText = NSMutableAttributedString.init(string: text ?? "", attributes: attributes)
        }
    }

    var styledText: String {
        get {
            return attributedText?.string ?? ""
        }
        set {
            setStyledText(newValue)
        }
    }

    func setStyledText(_ text: String) {
        attributedText = NSMutableAttributedString.init(string: text, attributes: attributes)
    }

    func applyStyle(
        textFontStyle: TextFontStyle,
        textAppearanceStyle: TextAppearanceStyle,
        textAligment: NSTextAlignment = .left,
        headIndent: CGFloat? = nil
    ) {
        if let textColor = textAppearanceStyle.textColor {
            self.textColor = textColor
        }
        if let backgroundColor = textAppearanceStyle.backgroundColor {
            self.backgroundColor = backgroundColor
        }
        if let cornerRadius = textAppearanceStyle.cornerRaius {
            layer.cornerRadius = cornerRadius
        }
        if let borderColor = textAppearanceStyle.borderColor?.cgColor {
            layer.borderColor = borderColor
            layer.borderWidth = 1.0
        }
        self.font = textFontStyle.font
        if let letterSpacing = textFontStyle.letterSpacing {
            attributes[.kern] = letterSpacing
        }
        if textFontStyle.throughLine {
            attributes[.strikethroughStyle] = NSUnderlineStyle.single.rawValue
        }
        let paragraphStyle = NSMutableParagraphStyle()
        if let lineSpacing = textFontStyle.lineSpacing {
            paragraphStyle.lineHeightMultiple = lineSpacing
            attributes[.paragraphStyle] = paragraphStyle
        }
        if let headIndent = headIndent {
            paragraphStyle.headIndent = headIndent
        }
        paragraphStyle.alignment = textAligment
        attributes[.paragraphStyle] = paragraphStyle
    }
}
