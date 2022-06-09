//
//  EasySkillsViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 30.05.2022.
//

import UIKit

class EasySkillsViewController: UIViewController {
    
    private lazy var infoText = InformationText()
    
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
    
    private lazy var infoLabel1: UILabel = {
        let label = UILabel()
        label.text = infoText.firstLabelForEasySkillsViewController
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoLabel2: UILabel = {
        let label = UILabel()
        label.text = infoText.secondLabelForEasySkillsViewController
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .natural
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 16
        return stackView
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на следующий экран", for: .normal)
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setUpView()
    }
    
    
    private func setUpView() {
        self.view.addSubview(labelStackView)
        self.labelStackView.addArrangedSubview(titleLabel)
        self.labelStackView.addArrangedSubview(infoLabel1)
        self.labelStackView.addArrangedSubview(infoLabel2)
        self.view.addSubview(myButton)
        
        let labelStackViewTopConstraint = self.labelStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50)
        let labelStackViewCenterXConstraint = self.labelStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let labelStackViewLeadingConstraint = self.labelStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let labelStackViewTrailingConstraint = self.labelStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        
        let heightButtonConstraint = self.myButton.heightAnchor.constraint(equalToConstant: 50)
        let buttonTrailingConstraint = self.myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        let buttonLeadingConstraint = self.myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let topButtonConstraint = self.myButton.topAnchor.constraint(equalTo: self.labelStackView.bottomAnchor, constant: 50)
        
        NSLayoutConstraint.activate([labelStackViewTopConstraint, labelStackViewCenterXConstraint, labelStackViewLeadingConstraint, labelStackViewTrailingConstraint, heightButtonConstraint, buttonTrailingConstraint, buttonLeadingConstraint, topButtonConstraint].compactMap( {$0} ))
        
    }
    
    @objc private func didTapmyButton() {
        let secondEasySkillsVC = SecondEasySkillsViewController()
        self.navigationController?.pushViewController(secondEasySkillsVC, animated: false)
    }
    
}




