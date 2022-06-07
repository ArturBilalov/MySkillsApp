//
//  DescriptionViewController.swift
//  MySkills
//
//  Created by Artur Bilalov on 07.06.2022.
//

import UIKit

class FirstDescriptionViewController: UIViewController {
    
    private lazy var infoText = InformationText()
    
    private lazy var myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
//        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .lightGray
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = contentSize
        scrollView.frame = view.bounds
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame.size = contentSize
        return view
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 500)
    }
    


    private lazy var infoLabel1: UILabel = {
       let label = UILabel()
        label.text = infoText.labelForFirstDescriptionViewController1
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoLabel2: UILabel = {
       let label = UILabel()
        label.text = infoText.labelForFirstDescriptionViewController2
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoLabel3: UILabel = {
       let label = UILabel()
        label.text = infoText.labelForFirstDescriptionViewController3
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoLabel4: UILabel = {
       let label = UILabel()
        label.text = infoText.labelForFirstDescriptionViewController4
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoLabelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 15
        stackView.layer.cornerRadius = 10
//        stackView.clipsToBounds = true
        stackView.layer.borderWidth = 0.5
        stackView.layer.borderColor = UIColor.lightGray.cgColor
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.navigationController?.navigationBar.isHidden = false
        setUpView()
    }

    
    private func setUpView() {
        self.view.addSubview(myScrollView)
        self.myScrollView.addSubview(contentView)
        self.contentView.addSubview(infoLabelStackView)
        self.infoLabelStackView.addArrangedSubview(infoLabel1)
        self.infoLabelStackView.addArrangedSubview(infoLabel2)
        self.infoLabelStackView.addArrangedSubview(infoLabel3)
        self.infoLabelStackView.addArrangedSubview(infoLabel4)
        
        for view in infoLabelStackView.arrangedSubviews {
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalTo: self.myScrollView.widthAnchor)
            ])
        }
        
        let scrollViewTopConstraint = self.myScrollView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let scrollViewBottomConstraint = self.myScrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        let scrollViewLeadingConstraint = self.myScrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let scrollViewTrailingConstraint = self.myScrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        
//        let backViewTopConstraint = self.backView.topAnchor.constraint(equalTo: self.myScrollView.topAnchor)
//        let backViewBottomConstraint = self.backView.bottomAnchor.constraint(equalTo: self.myScrollView.bottomAnchor)
//        let backViewLeadingConstraint = self.backView.leadingAnchor.constraint(equalTo: self.myScrollView.leadingAnchor)
//        let backViewTrailingConstraint = self.backView.trailingAnchor.constraint(equalTo: self.myScrollView.trailingAnchor)
//        let scrollViewCenterXConstraint = self.myScrollView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        
        let infoLabelTopConstraint = self.infoLabelStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16)
//        let infoLabelCenterXConstraint = self.infoLabelStackView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor)
        let infoLabelLeadingConstraint = self.infoLabelStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor)
        let infoLabelTrailingConstraint = self.infoLabelStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        
        NSLayoutConstraint.activate([ infoLabelTopConstraint, infoLabelLeadingConstraint, infoLabelTrailingConstraint, scrollViewTopConstraint, scrollViewLeadingConstraint, scrollViewTrailingConstraint, scrollViewBottomConstraint].compactMap( {$0} ))

}
}
