//
//  Game.swift
//  BowlingGame
//
//  Created by Yongwoo Huh on 2018-02-25.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

import UIKit

class Game {
    private var theScore = 0
    
    func roll(_ pins: Int) {
        theScore += pins
    }
    
    func score() -> Int {
        return theScore
    }
}
