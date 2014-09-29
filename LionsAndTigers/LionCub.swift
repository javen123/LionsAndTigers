//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by user on 9/29/14.
//  Copyright (c) 2014 Neva. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    var isMale = false
    
    func rubLionCubsBelly () {
        println("LIonCun: Snuggle and be happy")
    }
    
    override func roar() {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        
        if isMale {
            randomFactString = "Cubs are usually hidden in dense bush for apporximately six weeks"
        } else {
            randomFactString = "Cubs begin eating meat at about the age of 6 weeks"
        }
        
        return randomFactString
    }
}