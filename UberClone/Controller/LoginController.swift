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
        
        let view =  UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x"), textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordContainerView : UIView = {
        let view =  UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"), textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private let emailTextField : UITextField = {
        return UITextField().textField(withPlaceHolder: "Email", isSecureTextEntry: false)
    }()
    
    private let passwordTextField : UITextField = {
        return UITextField().textField(withPlaceHolder: "Password", isSecureTextEntry: true)
    }()
    
    private let loginButton : UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 0.85), for: .normal)
        button.backgroundColor = .mainBlueTint
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
        
    }()
    
    private let dontHaveAccountButton : UIButton = {
        
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(
            string: "Don't have an account yet? ",
            attributes:
            [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16),
             NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16),
             NSAttributedString.Key.foregroundColor : UIColor.mainBlueTint]))
        
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    

    
    //MARK: - Selectors/Actions
    
    @objc func handleShowSignUp(){
        print("Showing SignUp View")
        let controller = SignUpController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    //MARK: - Helper Functions
    
    func configureUI() {
        
        configureNavigationBar()
        
        view.backgroundColor = .backgroundColor
        view.addSubview(titleLable)
        
        titleLable.anchor(top:view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerX(inView: view)
        
        let stackView  = UIStackView(arrangedSubviews: [emailContainerView,
                                                        passwordContainerView,
                                                        loginButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        
        view.addSubview(stackView)
        stackView.anchor(top:titleLable.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 40,paddingLeft:16, paddingRight: 16)
        
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.centerX(inView: view)
        dontHaveAccountButton.anchor(bottom:view.safeAreaLayoutGuide.bottomAnchor,height: 32)
        
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
    }
}

