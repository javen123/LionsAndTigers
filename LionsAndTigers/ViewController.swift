//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by user on 9/25/14.
//  Copyright (c) 2014 Neva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!

    @IBOutlet weak var breedLabel: UILabel!
    
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var myTiger = Tiger()
        myTiger.age = 3
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal Tiger"
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
        myTiger.chuffANumberOfTimes(3, isLoud: false)
        
        myTiger.chuff()
        myTiger.chuffANumberOfTimes(3)
        myTiger.ageInTigerYearsFromAge(myTiger.age)
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        
        currentIndex = 0
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageInTigerYearsFromAge(thirdTiger.age)
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.age = 5
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        fourthTiger.age = fourthTiger.ageInTigerYearsFromAge(fourthTiger.age)
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        self.randomFactLabel.text = myTiger.randomFact()

                
       
        myTigers += [myTiger, secondTiger, thirdTiger, fourthTiger]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        while currentIndex == randomIndex {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            
        }
        
        currentIndex = randomIndex
        
        var tiger = myTigers[randomIndex]
        
       
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
            
            
            }, completion: {(finished:Bool) -> () in
                
            })

    }
}