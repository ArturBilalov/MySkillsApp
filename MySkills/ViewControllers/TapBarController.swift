//
//  TapBarController.swift
//  MySkills
//
//  Created by Artur Bilalov on 30.05.2022.
//

import UIKit

class TapBarController: UITabBarController {
    
    private enum TabBarItem {
        case easy
        case hard
        
        var title: String {
            switch self {
            case .easy:
                return "Easy skills"
            case .hard:
                return "Hard Skills"
            }
        }
        
        var image: UIImage? {
            switch self {
            case .easy:
                return UIImage(systemName: "house.circle")
            case .hard:
                return UIImage(systemName: "person.circle")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTapBar()
    }
    
    func setupTapBar() {
//        let items: [TabBarItem] = [.easy, .hard]
//        self.viewControllers = item.map({tabBarItem in
//            switch tabBarItem {
//            case .easy:
//                return UINavigationController(rootViewController: EasySkillsViewController())
//            case .hard:
//                return UINavigationController(rootViewController: HardSkillsViewController())
//            }
//        })
//        
//        self.viewControllers?.enumerated().forEach({(index, vc) in
//            vc.tabBarItem.title = items[index].title
//            vc.tabBarItem.title = items[index].image
//        })
    }

}
