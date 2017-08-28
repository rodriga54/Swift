//
//  Player.swift
//  Ratings
//
//  Created by Abe Rodriguez on 10/23/15.
//  Copyright (c) 2015 ___AbeRodriguez___. All rights reserved.
//

import Foundation

struct Player{
    
    var name: String?
    var game: String?
    var rating: Int
    init(name: String?, game: String?, rating: Int)
    {
    self.name = name
    self.game = game
    self.rating = rating
    }
    
    
}