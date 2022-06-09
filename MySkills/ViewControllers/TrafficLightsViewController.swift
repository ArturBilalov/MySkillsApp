//
//  TrafficLightsViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class TrafficLightsViewController: UIViewController {
    
    private lazy var infoText = InformationText()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = infoText.labelForTrafficLightsViewController
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var redLightLabel: UILabel = {
        let label = UILabel()
        label.text = "                        "
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var yellowLightLabel: UILabel = {
        let label = UILabel()
        label.text = "                        "
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var greenLightLabel: UILabel = {
        let label = UILabel()
        label.text = "                        "
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        return stackView
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
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
        self.navigationController?.navigationBar.isHidden = false
        
        redLightLabel.alpha = 0.1
        yellowLightLabel.alpha = 0.1
        greenLightLabel.alpha = 0.1
        setUpView()
    }
    
    private func setUpView() {
        self.view.addSubview(labelStackView)
        self.view.addSubview(infoLabel)
        self.labelStackView.addArrangedSubview(redLightLabel)
        self.labelStackView.addArrangedSubview(yellowLightLabel)
        self.labelStackView.addArrangedSubview(greenLightLabel)
        self.view.addSubview(myButton)
        
        let infoLabelTopConstraint = self.infoLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        let infoLabelCenterXConstraint = self.infoLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let infoLabelLeadingConstraint = self.infoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let infoLabelTrailingConstraint = self.infoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        
        let labelStackViewTopConstraint = self.labelStackView.topAnchor.constraint(equalTo: self.infoLabel.bottomAnchor, constant: 50)
        let labelStackViewCenterXConstraint = self.labelStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let labelStackViewLeadingConstraint = self.labelStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 96)
        let labelStackViewTrailingConstraint = self.labelStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -96)
        let labelStackViewHeightConstraint = self.labelStackView.heightAnchor.constraint(equalToConstant: 150)
        
        let heightButtonConstraint = self.myButton.heightAnchor.constraint(equalToConstant: 50)
        let buttonTrailingConstraint = self.myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -96)
        let buttonLeadingConstraint = self.myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 96)
        let topButtonConstraint = self.myButton.topAnchor.constraint(equalTo: self.labelStackView.bottomAnchor, constant: 25)
        
        NSLayoutConstraint.activate([labelStackViewTopConstraint, labelStackViewCenterXConstraint, labelStackViewLeadingConstraint, labelStackViewTrailingConstraint, heightButtonConstraint, buttonTrailingConstraint, buttonLeadingConstraint, topButtonConstraint, labelStackViewHeightConstraint, infoLabelTopConstraint, infoLabelCenterXConstraint, infoLabelLeadingConstraint, infoLabelTrailingConstraint].compactMap( {$0} ))
        
    }
    
    @objc private func didTapmyButton() {
        myButton.setTitle("NEXT", for: .normal)
        
        if redLightLabel.alpha == 0.1 {
            redLightLabel.alpha = 1
        } else {
            if redLightLabel.alpha == 1 {
                redLightLabel.alpha = 0.1
                yellowLightLabel.alpha = 1
            } else {
                if yellowLightLabel.alpha == 1 {
                    yellowLightLabel.alpha = 0.1
                    greenLightLabel.alpha = 1
                } else {
                    greenLightLabel.alpha = 0.1
                    redLightLabel.alpha = 1
                }
            }
        }
    }
}


