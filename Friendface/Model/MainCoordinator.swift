//
//  MainCoordinator.swift
//  Friendface
//
//  Created by Valentina Ungurean on 13.12.2022.
//

import UIKit

class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = ViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: false)
  }
  
  func configure(friend: Friend) {
    let vc = FriendViewController.instantiate()
    vc.coordinator = self
    vc.friend = friend
    navigationController.pushViewController(vc, animated: true)
  }
}
