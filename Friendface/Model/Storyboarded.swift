//
//  Storyboarded.swift
//  Friendface
//
//  Created by Valentina Ungurean on 13.12.2022.
//

import UIKit

protocol Storyboarded {
   static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static func instantiate() -> Self {
    let className = String(describing: self)
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
}
