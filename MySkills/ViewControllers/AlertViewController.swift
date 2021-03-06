//
//  InfoViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class AlertViewController: UIViewController {
    
    private lazy var infoText = InformationText()
    
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = infoText.labelForAlertViewController
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var alertButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ПОКАЗАТЬ АЛЕРТ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemYellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(self.didTapAlertButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Вернуться на предыдущий экран", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(self.didTapmyButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setUpView()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    private func setUpView() {
        self.view.addSubview(infoLabel)
        self.view.addSubview(buttonStackView)
        self.buttonStackView.addArrangedSubview(myButton)
        self.buttonStackView.addArrangedSubview(alertButton)
        
        let labelStackViewTopConstraint = self.infoLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90)
        let labelStackViewCenterXConstraint = self.infoLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let labelStackViewLeadingConstraint = self.infoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let labelStackViewTrailingConstraint = self.infoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        
        let heightButtonConstraint = self.buttonStackView.heightAnchor.constraint(equalToConstant: 100)
        let buttonTrailingConstraint = self.buttonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        let buttonLeadingConstraint = self.buttonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let topButtonConstraint = self.buttonStackView.topAnchor.constraint(equalTo: self.infoLabel.bottomAnchor, constant: 50)
        
        NSLayoutConstraint.activate([labelStackViewTopConstraint, labelStackViewCenterXConstraint, labelStackViewLeadingConstraint, labelStackViewTrailingConstraint, heightButtonConstraint, buttonTrailingConstraint, buttonLeadingConstraint, topButtonConstraint].compactMap( {$0} ))
        
    }
    
    @objc private func didTapAlertButton() {
        let alert = UIAlertController (title: "Внимание", message: "Вы уверены что хотите закрыть это окно? (если нажмёте ``нет`` оно всё равно закроется :) )", preferredStyle: .alert)
        let yesButton = UIAlertAction (title: "Да", style: .default, handler: {action in print ("Да")})
        let noButton = UIAlertAction (title: "Нет", style: .default, handler: {action in print ("Нет")})
        alert.addAction(yesButton)
        alert.addAction(noButton)
        present (alert, animated: true, completion: nil)
    }
    
    @objc private func didTapmyButton() {
        let secondEasySkillsVC = SecondEasySkillsViewController()
        self.navigationController?.pushViewController(secondEasySkillsVC, animated: false)
    }
    
}





