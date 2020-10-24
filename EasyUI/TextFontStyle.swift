//
//  CustomFont.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

struct TextFontStyle {

    enum Mode: String {
        case bold
        case medium
        case regular
        case light
        case thin
    }

    let mode: Mode
    let font: UIFont
    let letterSpacing: CGFloat?
    let lineSpacing: CGFloat?
    let throughLine: Bool

    init(
        fontFamily: String,
        mode: Mode,
        size: CGFloat,
        letterSpacing: CGFloat?,
        lineSpacing: CGFloat?,
        throughLine: Bool = false
    ) {
        self.mode = mode
        self.letterSpacing = letterSpacing
        self.lineSpacing = lineSpacing
        self.throughLine = throughLine
        switch self.mode {
        case .regular:
            self.font = UIFont.init(name: fontFamily, size: size)!
        default:
            let fontName = fontFamily+"-"+mode.rawValue
            if let font = UIFont.init(name: fontName, size: size) {
                self.font = font
            } else {
                fatalError("Can't find font name: \(fontName)")
            }
        }
    }
}
