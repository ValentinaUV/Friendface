//
//  Friend.swift
//  Friendface
//
//  Created by Valentina Ungurean on 13.12.2022.
//

import Foundation

struct Friend: Codable {
  var id: UUID
  var isActive: Bool
  var name: String
  var age: Int
  var company: String
  var email: String
  var address: String
  var about: String
  var registered: Date
  var tags: [String]
  var friends: [Connection]
  
  static let numberOfFields = 10
  
  var friendList: String {
    return friends.map { $0.name }.joined(separator: ", ")
  }
  
  var tagsList: String {
    return tags.map { $0 }.joined(separator: ", ")
  }
  
  func getFieldData(row: Int) -> (String, String) {
    let fieldData: [(String, String)] = [
      ("Name", name),
      ("Is Active", isActive ? "Yes" : "No"),
      ("Age", age.description),
      ("Company", company),
      ("Email", email),
      ("Address", address),
      ("About", about),
      ("Registered", registered.formatted()),
      ("Tags", tagsList),
      ("Friends", friendList)
    ]
    
    return fieldData[row]
  }
  
}

extension Array where Element == Friend {
  func matching(_ text: String?) -> [Friend] {
    if let text = text, text.count > 0 {
      return self.filter {
        $0.name.contains(text) || $0.company.contains(text) || $0.address.contains(text)
      }
    } else {
      return self
    }
  }
}
