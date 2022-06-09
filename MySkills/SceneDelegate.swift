//
//  SceneDelegate.swift
//  MySkills
//
//  Created by Artur Bilalov on 30.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene) // создается экземпляр класса UIWindow, описывающий окно, в коотором в дальнейшем будет выводиться интерфейс
        
        let tabBarVC = TapBarController()
        
        window?.rootViewController = tabBarVC // устанавливаем таббарконтроллер в качестве корневого (стартового) для окна
        
        window?.backgroundColor = .white
        
        window?.makeKeyAndVisible() // окно устанавливается в качестве ключевого и видимого. Ключевое - это значит окно, которе принимает и обрабатывает события касания, т.е. собыития, возникающие из-за касаний пользователя экрана устройства
        
        
        
        
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
    }
    
}
