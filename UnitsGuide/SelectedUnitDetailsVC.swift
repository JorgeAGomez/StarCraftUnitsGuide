//
//  SelectedUnitDetailsVC.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-12.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class SelectedUnitDetailsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


  @IBOutlet weak var nameUnit: UILabel!
  @IBOutlet weak var imageUnit: UIImageView!
  @IBOutlet weak var raceUnit: UILabel!
  @IBOutlet weak var descriptionUnit: UILabel!
  @IBOutlet weak var lifeImage: UIImageView!
  @IBOutlet weak var mineralImage: UIImageView!
  @IBOutlet weak var gasImage: UIImageView!
  @IBOutlet weak var buildTimeImage: UIImageView!
  
  var unitSelected: Terran!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        nameUnit.text = unitSelected.name
        imageUnit.image = UIImage(named: unitSelected.imageName)
        raceUnit.text = unitSelected.race
        mineralImage.image = UIImage(named: "minerals")
        gasImage.image = UIImage(named: "Gas")
        descriptionUnit.text = unitSelected.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return unitSelected.abilities.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AbilitiesCustomCell
      
      let abilitiesSelected = unitSelected.abilities[indexPath.row]
      cell.updateUI(unit: abilitiesSelected)
      
      return cell
    }

}
