//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by user on 9/25/14.
//  Copyright (c) 2014 Neva. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff () {
        println("Tiger: Chuff Chuff")
        
    }
    
    func chuffANumberOfTimes(numberOfTimes:Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int, isLoud:Bool){
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            } else {
                println("Tiger: purr")
            }
            }
    }
    
    func ageInTigerYearsFromAge(regularAge:Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        var insertedRandomFact:String
        
        if randomNumber == 0 {
            insertedRandomFact = "the tiger is the biggest species in the cat family"
        } else if randomNumber == 1 {
            insertedRandomFact = "Tigers can reach a lenght of 3.3 meters"
        } else {
            insertedRandomFact = "A group of tigers is known as an ambush or streak"
        }
        return insertedRandomFact
    }
    
}