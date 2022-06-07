//
//  SecondEasySkillsViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class SecondEasySkillsViewController: UIViewController {
    
    private lazy var infoText = InformationText()
    
    private lazy var infoLabel3: UILabel = {
       let label = UILabel()
        label.text = infoText.labelForSecondEasySkillsViewController
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var myButton1: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти к игре <<Cветофор>>", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(self.didTapmyButton1), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 16
        return stackView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationController?.navigationBar.isHidden = false
        setUpView()
        
        let myButton = UIBarButtonItem(image: UIImage(systemName: "exclamationmark.triangle"), style: .plain, target: self, action: #selector(didTapAlertButton))
        self.navigationItem.rightBarButtonItem = myButton
    }
    
    private func setUpView() {
        self.view.addSubview(stackView)
        self.stackView.addArrangedSubview(infoLabel3)
        self.stackView.addArrangedSubview(myButton1)

        let stackViewTopConstraint = self.stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150)
        let stackViewCenterXConstraint = self.stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let stackViewLeadingConstraint = self.stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        let stackViewTrailingConstraint = self.stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)

        NSLayoutConstraint.activate([stackViewTopConstraint, stackViewCenterXConstraint, stackViewLeadingConstraint, stackViewTrailingConstraint].compactMap( {$0} ))
    }
    
    @objc func didTapAlertButton() {
        let alertVC = AlertViewController()
        self.navigationController?.pushViewController(alertVC, animated: false)
    }
    
    @objc func didTapmyButton1() {
        let trafficLightsVC = TrafficLightsViewController()
        self.navigationController?.pushViewController(trafficLightsVC, animated: false)
    }
}
