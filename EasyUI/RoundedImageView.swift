//
//  RoundedImageView.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        assert(bounds.height == bounds.width, "The heights and widths of the rounded imageView must be equal")
        self.layer.cornerRadius = bounds.height / 2
    }
}
