//
//  CustomTableViewCell.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

@IBDesignable open class CustomTableViewCell: UITableViewCell, ViewCustomization {

    public override init(
        style: UITableViewCell.CellStyle,
        reuseIdentifier: String?
    ) {
        super.init(
            style: style,
            reuseIdentifier: reuseIdentifier
        )
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
        selectionStyle = .none
        addSubviews()
        makeSubviewsConstraints()
        configureViewLayout()
        configureSubviewsLayout()
    }
}
