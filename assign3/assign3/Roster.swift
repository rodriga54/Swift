//
//  Roaster.swift
//  assign3
//
//  Created by Abe Rodriguez on 10/26/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import Foundation

class Roster {
    var Number = ""
    var fName = ""
    var lName = ""
    var position = ""
    var bats = ""
    var hand = ""
    var height = ""
    var weight = ""
    var DOB = ""
    
    init(Number: String, firstName: String, lastName: String, position: String, bats: String, hand: String, height: String, weight: String, dateofbirth: String) {
        self.Number = Number
        self.fName = firstName
        self.lName = lastName
        self.position = position
        self.bats = bats
        self.hand = hand
        self.height = height
        self.weight = weight
        self.DOB = dateofbirth
    }
}