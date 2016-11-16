//
//  ProtossVC.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-11.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class ProtossVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var protossUnits = [Protoss]()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let probe = Protoss(name: "Probe", imageName: "", race: "Protoss")
        protossUnits.append(probe)
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return protossUnits.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "ProtossCell", for: indexPath) as! ProtossCustomCell
      
      
      return cell
    }
}
