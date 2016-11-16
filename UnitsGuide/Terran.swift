//
//  Terran.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-10.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import Foundation


class Terran{
    private var _name: String!
    private var _imageName: String!
    private var _race: String!
    private var _life: String!
    private var _cargoSize: String!
    private var _mineralCost: String!
    private var _gasCost: String!
    private var _buildTime: String!
    private var _supply: String!
    private var _abilities: [[String]]!
    private var _description: String!
  
    init(name: String, imageName: String, race: String, life: String, cargoSize: String, mineralCost: String, gasCost: String, buildTime: String, supply: String, abilities: [[String]], description: String!){
      _name = name
      _imageName = imageName
      _race = race
      _life = life
      _cargoSize = cargoSize
      _mineralCost = mineralCost
      _gasCost = gasCost
      _buildTime = buildTime
      _supply = supply
      _abilities = abilities
      _description = description
    }
  
  
    var name: String{
      return _name
    }
  
    var imageName: String{
      return _imageName
    }
  
    var race: String{
      return _race
    }
  
    var life: String{
      return _life
    }
  
    var cargoSize: String{
      return _cargoSize
    }
  
    var mineralCost: String{
      return _mineralCost
    }
  
    var gasCost: String{
      return _gasCost
    }
  
    var buildTime: String{
      return _buildTime
    }
  
    var supply: String{
      return _supply
    }
  
    var abilities: [[String]]{
      return _abilities
    }
  
    var description: String{
      return _description
    }
  
}
