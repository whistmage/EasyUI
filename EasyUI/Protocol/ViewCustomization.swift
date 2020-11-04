//
//  ViewCustomization.swift
//  EasyUI
//
//  Created by Ivan Miroshnik on 22.10.2020.
//  Copyright © 2020 whistmage. All rights reserved.
//

public protocol ViewCustomization {
    func addSubviews()
    func makeSubviewsConstraints()
    func configureSubviewsLayout()
    func configureViewLayout()
}
