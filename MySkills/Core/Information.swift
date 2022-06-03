//
//  Information.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class Information {
    var titleForEasySkillsViewController: String = "My Swift Skills Application"
    var firstLabelForEasySkillsViewController1: String = "Меня зовут Артур Билалов. Я начинающий iOS-разработчик. В этом приложении я хочу продемонстрировать свои навыки написания приложения кодом, без использования Storyboard, используя библиотеку UIKit"
    var secondLabelForEasySkillsViewController2: String = "Здесь, на главной странице, реализован TapBar с переходами на два вьюконтроллера. Easy Skills и Hard Skills. По умолчанию открывается EasySkillsViewController. Здесь реализовано отображение stackView c тремя лейблами и кнопка перехода на  "
    var titleForEasySkillsViewControlle2r: String = "My Skills Application"
    var titleForEasySkillsViewController2: String = "My Skills Application"
    var titleForEasyS2killsViewController: String = "My Skills Application"
    var titleForEasySk3illsViewController: String = "My Skills Application"
    var titleForEasySki4llsViewController: String = "My Skills Application"
    var titleForEasySkil5lsViewController: String = "My Skills Application"
    var titleForEasySkill6sViewController: String = "My Skills Application"
    var titleForEasySkills7ViewController: String = "My Skills Application"
    var titleForEasySkillsV8iewController: String = "My Skills Application"
    var titleForEasySkillsVi9ewController: String = "My Skills Application"
    var titleForEasySkillsVie0wController: String = "My Skills Application"
    
    var titleCalculatorViewConroller2: String = "Матрица судьбы"
    
    var n1Label: UILabel = {
       let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.layer.cornerRadius = 12
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 7)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
var labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.backgroundColor = .lightGray
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.layer.cornerRadius = 10
        stackView.clipsToBounds = true
        stackView.layer.borderWidth = 0.5
        stackView.layer.borderColor = UIColor.lightGray.cgColor
        return stackView
    }()
    
var mainlabelStackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.layer.cornerRadius = 10
//        stackView.clipsToBounds = true
//        stackView.layer.borderWidth = 0.5
//        stackView.layer.borderColor = UIColor.lightGray.cgColor
        return stackView
    }()
    
}


