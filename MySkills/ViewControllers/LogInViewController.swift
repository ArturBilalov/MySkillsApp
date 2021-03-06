//
//  LogInViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 30.05.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .lightGray
        return scrollView
    }()
    
    
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "orig")
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var warningLabel: UILabel = {
        let label = UILabel()
        label.text = "Введите не менее 6 символов"
        label.textColor = .black
        label.isHidden = true
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var textFieldStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.layer.cornerRadius = 10
        stackView.clipsToBounds = true
        stackView.layer.borderWidth = 0.5
        stackView.layer.borderColor = UIColor.lightGray.cgColor
        return stackView
    }()
    
    private lazy var infoTextField: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = .systemGray6
        textfield.placeholder = "Email or phone number"
        textfield.font = UIFont.systemFont(ofSize: 16)
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 2.0))
        textfield.leftView = leftView
        textfield.leftViewMode = .always
        textfield.tintColor = .lightGray
        textfield.autocapitalizationType = .none
        textfield.textColor = .black
        textfield.layer.borderWidth = 0.5
        textfield.layer.borderColor = UIColor.lightGray.cgColor
        textfield.clearButtonMode = .whileEditing
        textfield.clearButtonMode = .always
        textfield.clearButtonMode = .unlessEditing
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = .systemGray6
        textfield.placeholder = "Enter password"
        textfield.font = UIFont.systemFont(ofSize: 16)
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 2.0))
        textfield.leftView = leftView
        textfield.leftViewMode = .always
        textfield.tintColor = .lightGray
        textfield.autocapitalizationType = .none
        textfield.textColor = .black
        textfield.layer.borderWidth = 0.5
        textfield.layer.borderColor = UIColor.lightGray.cgColor
        textfield.isSecureTextEntry = true
        textfield.clearButtonMode = .whileEditing
        textfield.clearButtonMode = .always
        textfield.clearButtonMode = .unlessEditing
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(named: "Color")
        button.addTarget(self, action: #selector(self.didTapLogInButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var descriptionButton: UIButton = {
        let button = UIButton()
        button.setTitle("открыть описание", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemGray3
        button.addTarget(self, action: #selector(self.didTapdescriptionButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var topButtonConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
        self.setUpView()
        self.tapGesture()
        self.infoTextField.delegate = self
        self.passwordTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.kbWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.kbWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func kbWillShow(notification: NSNotification) {
        if let kbFrameSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            scrollView.contentOffset = CGPoint(x: 0, y: kbFrameSize.height * 0.25)
            scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbFrameSize.height, right: 0)
        }
    }
    
    @objc func kbWillHide(notification: NSNotification) {
        scrollView.contentOffset = CGPoint.zero
    }
    
    private func setUpView() {
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(logoImageView)
        self.scrollView.addSubview(descriptionButton)
        self.scrollView.addSubview(textFieldStackView)
        self.scrollView.addSubview(logInButton)
        self.textFieldStackView.addArrangedSubview(infoTextField)
        self.textFieldStackView.addArrangedSubview(passwordTextField)
        
        let scrollViewTopConstraint = self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let scrollViewRightConstraint = self.scrollView.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        let scrollViewBottomConstraint = self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        let scrollViewLeftConstraint = self.scrollView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        
        let bottomLogoConstraint = self.logoImageView.bottomAnchor.constraint(equalTo: self.textFieldStackView.topAnchor, constant: -70)
        let heightLogoConstraint = self.logoImageView.heightAnchor.constraint(equalToConstant: 150)
        let widthLogoConstraint = self.logoImageView.widthAnchor.constraint(equalToConstant: 150)
        let centerXLogoConstraint = self.logoImageView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor)
        
        let topDescriptionButtonConstraint = self.descriptionButton.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 15)
        let centerXDescriptionButtonConstraint = self.descriptionButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let heightDescriptionButtonConstraint = self.descriptionButton.heightAnchor.constraint(equalToConstant: 25)
        
        let stackViewCenterXConstraint = self.textFieldStackView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor)
        let stackViewCenterYConstraint = self.textFieldStackView.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor)
        let stackViewLeadingConstraint = self.textFieldStackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 16)
        let stackViewTrailingConstraint = self.textFieldStackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -16)
        
        let infoTextFieldHeightAnchor = self.infoTextField.heightAnchor.constraint(equalToConstant: 50)
        let passwordTextFieldHeightAnchor = self.passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        
        let heightButtonConstraint = self.logInButton.heightAnchor.constraint(equalToConstant: 50)
        let buttonTrailingConstraint = self.logInButton.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -16)
        let buttonLeadingConstraint = self.logInButton.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 16)
        self.topButtonConstraint = self.logInButton.topAnchor.constraint(equalTo: self.textFieldStackView.bottomAnchor, constant: 16)
        self.topButtonConstraint?.priority = UILayoutPriority(rawValue: 999)
        
        NSLayoutConstraint.activate([ scrollViewTopConstraint, scrollViewRightConstraint, scrollViewBottomConstraint, scrollViewLeftConstraint, heightLogoConstraint, widthLogoConstraint,  centerXLogoConstraint, bottomLogoConstraint, stackViewCenterXConstraint, stackViewCenterYConstraint, stackViewLeadingConstraint, stackViewTrailingConstraint, infoTextFieldHeightAnchor, passwordTextFieldHeightAnchor, heightButtonConstraint, self.topButtonConstraint, buttonLeadingConstraint,  buttonTrailingConstraint, topDescriptionButtonConstraint, centerXDescriptionButtonConstraint, heightDescriptionButtonConstraint].compactMap( {$0} ))
    }
    
    private func tapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self.view, action: #selector(view.endEditing))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func validPassword(userPassword: String) -> Bool {
        let passwordReg = (".{6,}")
        let passwordTesting = NSPredicate(format: "SELF MATCHES %@", passwordReg)
        return passwordTesting.evaluate(with: userPassword)
    }
    
    func isValidEmail(userEmail: String) -> Bool {
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"+"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"+"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"+"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"+"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"+"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"+"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        return emailTest.evaluate(with: userEmail)
    }
    
    @objc private func didTapdescriptionButton() {
        let descriptionVC = FirstDescriptionViewController()
        self.navigationController?.pushViewController(descriptionVC, animated: false)
    }
    
    @objc private func didTapLogInButton() {
        if logInButton.isSelected {
            logInButton.alpha = 0.8
        } else if logInButton.isHighlighted {
            logInButton.alpha = 0.8
        } else if logInButton.isEnabled {
            logInButton.alpha = 0.8
        } else {
            logInButton.alpha = 1
        }
        
        let topLabelConstraint = self.warningLabel.topAnchor.constraint(equalTo: self.textFieldStackView.bottomAnchor, constant: -10)
        let leadingLabelConstraint = self.warningLabel.leadingAnchor.constraint(equalTo: self.textFieldStackView.leadingAnchor)
        let heightLabelConstraint = self.warningLabel.heightAnchor.constraint(equalToConstant: 40)
        let trailingLabelConstraint = self.warningLabel.trailingAnchor.constraint(equalTo: self.textFieldStackView.trailingAnchor)
        
        self.topButtonConstraint = self.logInButton.topAnchor.constraint(equalTo: self.warningLabel.bottomAnchor, constant: 16)
        
        let email = isValidEmail(userEmail: infoTextField.text!)
        if(email == false) {
            let alert = UIAlertController(title: "Внимание!", message: "Введён некорректный email", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Oк", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        let password = validPassword(userPassword: passwordTextField.text!)
        if(password == false) {
            self.warningLabel.isHidden = false
            self.scrollView.addSubview(self.warningLabel)
            self.topButtonConstraint?.isActive = false
            NSLayoutConstraint.activate([topLabelConstraint, leadingLabelConstraint, trailingLabelConstraint, heightLabelConstraint, topButtonConstraint].compactMap( {$0} ))
        } else {
            self.warningLabel.removeFromSuperview()
            NSLayoutConstraint.deactivate([topLabelConstraint, leadingLabelConstraint, trailingLabelConstraint, heightLabelConstraint].compactMap( {$0} ))
            self.warningLabel.isHidden = true
        }
        
        if self.infoTextField.text == "" {
            self.infoTextField.backgroundColor = .systemPink
        } else if passwordTextField.text == "" {
            self.passwordTextField.backgroundColor = .systemPink
        } else if self.infoTextField.text == "adam@mail.ru" && passwordTextField.text == "123456" {
            let profileVC = ProfileViewController()
            self.navigationController?.pushViewController(profileVC, animated: false)
        } else {
            let alert = UIAlertController(title: "Внимание!", message: "Введён неверный адрес эл. почты или пароль", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Oк", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


