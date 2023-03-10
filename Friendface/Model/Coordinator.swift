//
//  Coordinator.swift
//  Friendface
//
//  Created by Valentina Ungurean on 13.12.2022.
//

import UIKit

protocol Coordinator {
   var childCoordinators: [Coordinator] { get set }
   var navigationController: UINavigationController { get set }
   func start()
}
