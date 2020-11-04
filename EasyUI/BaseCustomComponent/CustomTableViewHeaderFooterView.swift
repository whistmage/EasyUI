//
//  CustomTableViewHeaderFooterView.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 24.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

@IBDesignable open class CustomTableViewHeaderFooterView: UITableViewHeaderFooterView, ViewCustomization {

    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
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
