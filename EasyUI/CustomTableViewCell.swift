//
//  CustomTableViewCell.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

@IBDesignable class CustomTableViewCell: UITableViewCell, ViewCustomization {

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

    public func addSubviws() {
        
    }

    public func makeSubviewsConstraints() {
        
    }

    public func configureSubviewsLayout() {
        
    }

    public func configureViewLayout() {
        
    }

    private func setupView() {
        selectionStyle = .none
        addSubviws()
        makeSubviewsConstraints()
        configureViewLayout()
        configureSubviewsLayout()
    }
}
