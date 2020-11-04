//
//  CustomCollectionViewCell.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

@IBDesignable open class CustomCollectionViewCell: UICollectionViewCell, ViewCustomization {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    open func addSubviews() {
        
    }

    open func makeSubviewsConstraints() {
        
    }

    open func configureSubviewsLayout() {
        
    }

    open func configureViewLayout() {
        
    }

    private func setupView() {
        addSubviews()
        makeSubviewsConstraints()
        configureViewLayout()
        configureSubviewsLayout()
    }
}

