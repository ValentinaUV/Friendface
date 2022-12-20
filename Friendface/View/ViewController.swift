//
//  ViewController.swift
//  Friendface
//
//  Created by Valentina Ungurean on 12.12.2022.
//

import UIKit

class ViewController: UITableViewController, UISearchResultsUpdating, Storyboarded {

  let dataSource = FriendDataSource()
  weak var coordinator: MainCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Friends"

    self.dataSource.dataChanged = { [weak self] in
      self?.tableView.reloadData()
    }
    self.dataSource.fetch("https://www.hackingwithswift.com/samples/friendface.json")
    self.tableView.dataSource = self.dataSource
    
    let search = UISearchController(searchResultsController: nil)
    search.searchResultsUpdater = self
    search.obscuresBackgroundDuringPresentation = false
    search.searchBar.placeholder = "Find a friend"
    navigationItem.searchController = search
  }
  
  func updateSearchResults(for searchController: UISearchController) {
    dataSource.filterText = searchController.searchBar.text
    tableView.reloadData()
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    coordinator?.configure(friend: dataSource.filteredFriends[indexPath.row])
  }
}

