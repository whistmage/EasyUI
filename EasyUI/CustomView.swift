//
//  AbstractView.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 22.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

import UIKit

public class CustomView: UIView, ViewCustomization {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    public required init(
        center: CGPoint,
        width: CGFloat, height: CGFloat
    ) {
        let frame = CGRect.init(
            origin: center,
            size: CGSize.init(
                width: width,
                height: height
            )
        )
        super.init(frame: frame)
        setupView()
    }

    public func addSubviws() {
        
    }

    public func makeSubviewsConstraints() {
        
    }

    public func configureViewLayout() {

    }

    public func configureSubviewsLayout() {
        
    }

    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubviws()
        makeSubviewsConstraints()
        configureViewLayout()
        configureSubviewsLayout()
    }
}
