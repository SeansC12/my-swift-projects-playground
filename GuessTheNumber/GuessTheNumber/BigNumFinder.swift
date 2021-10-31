//
//  BigNumFinder.swift
//  GuessTheNumber
//
//  Created by SEAN ULRIC BUGUINA CHUA stu on 8/9/21.
//

import Foundation

public class BigNumFinder {
    public init() {}
    
    public func find(result : Double) -> String { //function if actual number smaller than rng
        for x in stride (from : 10, to : 0, by : -0.1) {
            if result >= x {
                let inverse = Double(floor(1/x * 10) / 10)
                return "The actual number is approximately \(inverse) of your number"
            }
            
        }
        return "1 Nothing found for \(result)"
    }
    
}
