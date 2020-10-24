//
//  CustomCollectionReusableView.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

@IBDesignable class CustomCollectionReusableView: UICollectionReusableView, ViewCustomization {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    public func addSubviws() {
        
    }

    public func makeSubviewsConstraints() {
        
    }

    public func configureSubviewsLayout() {
        
    }

    public func configureViewLayout() {
        
    }

    private func setupView() {
        addSubviws()
        makeSubviewsConstraints()
        configureViewLayout()
        configureSubviewsLayout()
    }
}
