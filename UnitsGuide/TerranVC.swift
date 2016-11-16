//
//  TerranVC.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-10.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class TerranVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var terranUnits = [Terran]()
    var selectedUnit : Terran!

    override func viewDidLoad() {
        super.viewDidLoad()
       let scv = Terran(name: "SCV", imageName: "SCV", race: "Terran", life: "45", cargoSize: "1", mineralCost: "50", gasCost: "0", buildTime: "17", supply: "1", abilities: [["Repair","Restores life to mechanical units and structures at the cost of resources","",""], ["Gather", "Orders SCV to gather resources from a selected Mineral field or Vespene Geyser","",""]], description: "The SCV is the workhorse of the Terran planets due to its ability to perform a multitude of tasks, including constructing new buildings, repairing damaged structures and units, and harvesting and transporting raw resource materials. This versatility and unmatched reliability make the SCV an invaluable tool in rapidly establishing Marine encampments on any terrain.")
        let marine = Terran(name: "Marine", imageName: "Marine", race: "Terran", life: "45", cargoSize: "1", mineralCost: "50", gasCost: "0", buildTime: "25", supply: "1", abilities: [["Stimpack"]], description: "")
        let marauder = Terran(name: "Marauder", imageName: "Marauder", race: "Terran", life: "125", cargoSize: "2", mineralCost: "100", gasCost: "25", buildTime: "30", supply: "2", abilities: [[""]], description: "")
        let reaper = Terran(name: "Reaper", imageName: "Reaper", race: "Terran", life: "60", cargoSize: "1", mineralCost: "50", gasCost: "50", buildTime: "45", supply: "1", abilities: [[""]], description: "")
        terranUnits.append(scv)
        terranUnits.append(marine)
        terranUnits.append(marauder)
        terranUnits.append(reaper)
    }
  
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return terranUnits.count
    }
  
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      let cell = tableView.dequeueReusableCell(withIdentifier: "TerranCell", for: indexPath) as! TerranCustomCell
      
      
      let currentUnit = terranUnits[indexPath.row]
      cell.updateUI(terran: currentUnit)
      
      return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectedUnit = terranUnits[indexPath.row]
       self.performSegue(withIdentifier: "details", sender: self)
    }
  
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if(segue.identifier == "details"){
        let controller = segue.destination as! SelectedUnitDetailsVC
        controller.unitSelected = selectedUnit
      }
    }
}
