//
//  FriendViewController.swift
//  Friendface
//
//  Created by Valentina Ungurean on 13.12.2022.
//

import UIKit

class FriendViewController: UITableViewController, Storyboarded {
  
  var friend: Friend?
  weak var coordinator: MainCoordinator?
  let friendCellReuseIdentifier = "friendCellReuseIdentifier"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Friend Details"
    self.tableView.register(UINib(nibName: String(describing: FriendTableViewCell.self), bundle: nil), forCellReuseIdentifier: friendCellReuseIdentifier)
    self.tableView.rowHeight  = UITableView.automaticDimension
    self.tableView.estimatedRowHeight = 80
    self.tableView.dataSource = self
    self.tableView.delegate = self
  }
  
//  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//    return UITableView.automaticDimension
//  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    Friend.numberOfFields
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: friendCellReuseIdentifier, for: indexPath) as! FriendTableViewCell
    guard let f = friend else {return UITableViewCell()}
    let (field, value) = f.getFieldData(row: indexPath.row)
    cell.fieldLabel.text = field
    cell.valueLabel.text = value

    return cell
  }
}
