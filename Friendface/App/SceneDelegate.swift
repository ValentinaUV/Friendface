//
//  SceneDelegate.swift
//  Friendface
//
//  Created by Valentina Ungurean on 12.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?
  var coordinator: MainCoordinator?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    let navController = UINavigationController()
    coordinator = MainCoordinator(navigationController: navController)
    coordinator?.start()
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = navController
    window?.makeKeyAndVisible()
  }
}
