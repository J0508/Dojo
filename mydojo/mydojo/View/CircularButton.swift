//
//  CircularButton.swift
//  mydojo
//
//  Created by jie gao on 30/10/19.
//  Copyright © 2019 Wisetree Solutions Pty Ltd. All rights reserved.
//

import UIKit

@IBDesignable
class CircularButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    override func prepareForInterfaceBuilder() {
        setupUI()
    }
    
    func setupUI() {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.masksToBounds = false 
    }

}
