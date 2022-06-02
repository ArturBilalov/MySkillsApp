//
//  CalculatorViewController1.swift
//  MySkills
//
//  Created by Artur Bilalov on 02.06.2022.
//

import UIKit

class CalculatorViewController1: UIViewController {
    
    private lazy var infoText = Information()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.text = infoText.titleForEasySkillsViewController
        label.textAlignment = .center
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var datePicker: UIDatePicker = {
       let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        let localeID = Locale.preferredLanguages.first
        datePicker.locale = Locale(identifier: localeID!)
        return datePicker
    }()
    
    private lazy var nameTextField: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = .systemGray6
        textfield.placeholder = "Введите своё имя"
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
    
    private lazy var dateTextField: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = .systemGray6
        textfield.placeholder = "Введите дату рождения"
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
    
    private lazy var calculatingButton: UIButton = {
       let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(named: "Color")
        button.addTarget(self, action: #selector(self.didTapCalculatingButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
    return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationController?.navigationBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([flexSpace, doneButton], animated: true)
        
        dateTextField.inputAccessoryView = toolbar
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureDone))
        self.view.addGestureRecognizer(tapGesture)
        self.setUpView()

    }
    
    private func setUpView() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(datePicker)
        self.view.addSubview(calculatingButton)
        self.view.addSubview(textFieldStackView)
        self.textFieldStackView.addArrangedSubview(nameTextField)
        self.textFieldStackView.addArrangedSubview(dateTextField)
        
        let scrollViewTopConstraint = self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let scrollViewRightConstraint = self.scrollView.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        let scrollViewBottomConstraint = self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        let scrollViewLeftConstraint = self.scrollView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        
        let bottomLogoConstraint = self.logoImageView.bottomAnchor.constraint(equalTo: self.textFieldStackView.topAnchor, constant: -70)
        let heightLogoConstraint = self.logoImageView.heightAnchor.constraint(equalToConstant: 150)
        let widthLogoConstraint = self.logoImageView.widthAnchor.constraint(equalToConstant: 150)
        let centerXLogoConstraint = self.logoImageView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor)
        
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
        
        NSLayoutConstraint.activate([ scrollViewTopConstraint, scrollViewRightConstraint, scrollViewBottomConstraint, scrollViewLeftConstraint, heightLogoConstraint, widthLogoConstraint,  centerXLogoConstraint, bottomLogoConstraint, stackViewCenterXConstraint, stackViewCenterYConstraint, stackViewLeadingConstraint, stackViewTrailingConstraint, infoTextFieldHeightAnchor, passwordTextFieldHeightAnchor, heightButtonConstraint, self.topButtonConstraint, buttonLeadingConstraint,  buttonTrailingConstraint].compactMap( {$0} ))
    }
    
    @objc func didTapCalculatingButton() {
        let calculatorVC2 = CalculatorViewController2()
        self.navigationController?.pushViewController(calculatorVC2, animated: false)
    }
    
    @objc func doneAction() {
        getDateFromPicker()
        view.endEditing(true)
    }
    
    @objc func tapGestureDone() {
        view.endEditing(true)
    }
    
    func getDateFromPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        dateTextField.text = formatter.string(from: datePicker.date)
    }
    

}
