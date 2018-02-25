//
//  BowlingGameTests.swift
//  BowlingGameTests
//
//  Created by Yongwoo Huh on 2018-02-25.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

import XCTest
@testable import BowlingGame

class BowlingGameTests: XCTestCase {
    var game: Game!
    
    override func setUp() {
        super.setUp()
        game = Game()
    }
    
    override func tearDown() {
        game = nil
        super.tearDown()
    }
    
    
    // test #01
    func test_GutterGame() {
        rollMany(pins: 0, times: 20)
        XCTAssertEqual(game.score(), 0)
    }
    
    // test #02
    func test_AllOnes() {
        rollMany(pins: 1, times: 20)
        XCTAssertEqual(game.score(), 20)
    }
    
    // test #03
    func test_oneSpare() {
        rollSpare()
        game.roll(3)
        rollMany(pins: 0, times: 17)
        XCTAssertEqual(game.score(), 16)
    }
    
    //MARK: Private methods
    private func rollMany(pins: Int, times: Int) {
        for _ in 1 ... times {
            game.roll(pins)
        }
    }
    
    private func rollSpare() {
        game.roll(5)
        game.roll(5)
    }
}
