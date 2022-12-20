//
//  FriendTableViewCell.swift
//  Friendface
//
//  Created by Valentina Ungurean on 19.12.2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

  
  @IBOutlet weak var fieldLabel: UILabel!
  
  @IBOutlet weak var valueLabel: UILabel!
  
  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
}
