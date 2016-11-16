//
//  AbilitiesCustomCell.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-15.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class AbilitiesCustomCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var detailLabel: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    func updateUI(unit: [String]) {
      titleLabel.text = unit[0]
      detailLabel.text = unit[1]
    }
    
  

}
