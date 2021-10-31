//
//  SmallNumFinder.swift
//  GuessTheNumber
//
//  Created by SEAN ULRIC BUGUINA CHUA stu on 8/9/21.
//

import Foundation

public class SmallNumFinder {
    private var randomNum : Int
    
    public init(randomNumber : Int) {
        self.randomNum = randomNumber
    }
    
    public func find( UserGuessedNo : Int) -> String { //function if actual number larger than rng
        if self.randomNum .isMultiple(of: UserGuessedNo) {
            return "The actual number was \(self.randomNum / UserGuessedNo) times your number"
        } else {
            let fractiondiff : Double = round((Double(self.randomNum) / Double(UserGuessedNo)) * 100) / 100
            return "The actual number was \(fractiondiff) times your number"
        }
        
    }
}
