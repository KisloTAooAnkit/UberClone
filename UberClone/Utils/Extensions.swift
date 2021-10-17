//
//  Extensions.swift
//  UberClone
//
//  Created by Ankit Singh on 17/10/21.
//

import UIKit

extension UIView {
    
    func anchor(
        top : NSLayoutYAxisAnchor? = nil,
        left : NSLayoutXAxisAnchor? = nil,
        bottom : NSLayoutYAxisAnchor? = nil,
        right : NSLayoutXAxisAnchor? = nil,
        paddingTop : CGFloat = 0,
        paddingLeft : CGFloat = 0,
        paddingBottom : CGFloat = 0,
        paddingRight : CGFloat = 0,
        width : CGFloat? = nil,
        height : CGFloat? = nil
    ){
        self.translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true

        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true

        }
        
        if let width = width {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true

        }
    }
    
    func centerX(inView view: UIView){
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView){
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
