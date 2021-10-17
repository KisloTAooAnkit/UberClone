//
//  LoginController.swift
//  UberClone
//
//  Created by Ankit Singh on 15/10/21.
//


import UIKit

class LoginController: UIViewController {

    
    //MARK: - Properties
    
    private let titleLable : UILabel = {
        let label = UILabel()
        label.text = "UBER"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()
    
    private lazy var emailContainerView : UIView = {
        let view = UIView()
        //Image Icon
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "ic_mail_outline_white_2x")
        imageView.alpha = 0.87
        view.addSubview(imageView)
        imageView.centerY(inView: view)
        imageView.anchor(left:view.leftAnchor,paddingLeft: 8, width: 24 , height: 24)
        view.addSubview(imageView)
        
        //Textfield
        view.addSubview(emailTextField)
        emailTextField.centerY(inView: view)
        emailTextField.anchor(left:imageView.rightAnchor, right: view.rightAnchor,paddingLeft: 8)
        
        //SeperatorView
        let seperatorView = UIView()
        seperatorView.backgroundColor = .lightGray
        view.addSubview(seperatorView)
        seperatorView.anchor(left:view.leftAnchor,bottom: view.bottomAnchor,right:view.rightAnchor,paddingLeft: 8,height: 0.75)
        
        
        return view
    }()
    
    private let emailTextField : UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.attributedPlaceholder = NSAttributedString(string: "Email",attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        return tf
    }()
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        view.addSubview(titleLable)
//        titleLable.translatesAutoresizingMaskIntoConstraints = false
//        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 0).isActive = true
        titleLable.anchor(top:view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerX(inView: view)
        view.addSubview(emailContainerView)
        emailContainerView.anchor(top: titleLable.bottomAnchor, left: view.leftAnchor,  right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16, height: 50)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

}
