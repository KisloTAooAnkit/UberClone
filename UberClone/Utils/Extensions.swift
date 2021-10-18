//
//  Extensions.swift
//  UberClone
//
//  Created by Ankit Singh on 17/10/21.
//

import UIKit

extension UIView {
    
    func inputContainerView(image : UIImage , textField : UITextField) -> UIView {
        let view = UIView()
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.alpha = 0.87
        view.addSubview(imageView)
        imageView.centerY(inView: view)
        imageView.anchor(left:view.leftAnchor,paddingLeft: 8, width: 24 , height: 24)
        view.addSubview(imageView)
        
        //Textfield
        view.addSubview(textField)
        textField.centerY(inView: view)
        textField.anchor(left:imageView.rightAnchor, right: view.rightAnchor,paddingLeft: 8)
        
        //Seperator
        let seperatorView = UIView()
        seperatorView.backgroundColor = .lightGray
        view.addSubview(seperatorView)
        seperatorView.anchor(left:view.leftAnchor,bottom: view.bottomAnchor,right:view.rightAnchor,paddingLeft: 8,height: 0.75)
        
        return view
        
    }
    
    
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

extension UITextField {
    func textField(withPlaceHolder placeHolder : String , isSecureTextEntry : Bool) -> UITextField {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.isSecureTextEntry = isSecureTextEntry
        tf.attributedPlaceholder = NSAttributedString(string: placeHolder,attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        return tf
    }
}

extension UIColor {
    static func rgb(red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    static let backgroundColor  = UIColor.rgb(red: 25, green: 25, blue: 25)
    
    static let mainBlueTint = UIColor.rgb(red: 17, green: 154, blue: 237)
    
}
