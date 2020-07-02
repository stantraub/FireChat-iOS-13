//
//  InputContainerView.swift
//  FireChat
//
//  Created by Stanley Traub on 7/1/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import UIKit

class InputContainerView: UIView {
    init(image: UIImage?, textField: UITextField) {
        super.init(frame: .zero)
        setHeight(height: 50)
        let iv = UIImageView()
        iv.image = image
        iv.tintColor = .white
        iv.alpha = 0.87
        
        addSubview(iv)
        iv.centerY(inView: self)
        iv.anchor(left: leftAnchor, paddingLeft: 8)
        iv.setDimensions(height: 24, width: 28)
        
        addSubview(textField)
           textField.centerY(inView: self)
           textField.anchor(left: iv.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft: 8, paddingBottom: -8)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        addSubview(dividerView)
        dividerView.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft: 8, height: 0.75)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
