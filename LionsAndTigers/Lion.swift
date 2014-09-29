//
//  Lion.swift
//  LionsAndTigers
//
//  Created by user on 9/29/14.
//  Copyright (c) 2014 Neva. All rights reserved.
//

import Foundation
import UIKit


class Lion {
    
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subSpecies = ""
    
    func roar () {
        println("Lion: roar roar")
    }
    
    func changeToAlphaMale () {
        self.isAlphaMale = true
    }
    
    func randomFact () -> String {
        var randomFact: String
        if isAlphaMale == true {
            randomFact = "Male lions are easy to recognize thanks to their disntictive manes. Males with darker manes are more likely to attract females"
        } else {
            randomFact = "Female lionesses form the stable social unit and do not tolerate outside females"
        }
        return randomFact
    }
}