//
//  Protoss.swift
//  UnitsGuide
//
//  Created by Jorge Gomez on 2016-11-11.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import Foundation

class Protoss{
  
  private var _name: String!
  private var _imageName: String!
  private var _race: String!
  
  init(name: String, imageName: String!, race: String!){
    _name = name
    _imageName = imageName
    _race = race
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

  
}
