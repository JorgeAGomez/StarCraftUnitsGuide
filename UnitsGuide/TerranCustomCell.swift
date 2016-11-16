//
//  TerranCustomCell.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-11.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class TerranCustomCell: UITableViewCell {

  @IBOutlet weak var raceUnit: UILabel!
  @IBOutlet weak var imageUnit: UIImageView!
  @IBOutlet weak var nameUnit: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  
    func updateUI(terran: Terran){
      nameUnit.text = terran.name
      imageUnit.image = UIImage(named: terran.imageName)
      raceUnit.text = terran.race
    }

}
