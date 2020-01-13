//
//  ViewController.swift
//  jolly-rogers
//
//  Created by Code Nation on 10/01/2020.
//  Copyright © 2020 JollyRodgerGamingCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        class Crewman {
            var name: String
            var navSkill: Int
            var combatSkill: Int
            var morale: Int
            var loyalty: Int

            init(name: String, navSkill: Int, combatSkill: Int, morale: Int, loyalty: Int) {
                self.name = name

                self.navSkill = navSkill
                self.combatSkill = combatSkill
                self.morale = morale
                self.loyalty = loyalty
            }
        }

        var crewNames =
        ["Chance", "Bruno", "Toby", "Damien", "Rafael", "Domenic", "Weston", "Edison", "Chris", "Grant", "Cortez", "Darren", "Nicolas", "Everette", "Jason", "Vicente", "Noe", "Ricky", "Ivory", "Thomas", "Guillermo", "Isreal", "Ben", "Winfred", "Lincoln", "Kareem", "Antwan", "Greg", "Lawrence", "Corey", "Todd", "Jeffery", "Rayford", "Julio", "Manual", "Chi", "Bradford", "Devon", "Bryan", "Andreas", "Don", "Erik", "Bobbie", "Tyree", "Felipe", "Clifton", "Carrol", "Kasey", "Cliff", "Jack"]


        var crewmenAll = [Crewman]()

        func crewGeneration() {
            let randomOrder = crewNames.shuffled()
            
            for i in 0..<25 {
                let name = randomOrder[i]
                
                let navInt = Int.random(in: 3...7)
                let combatInt = Int.random(in: 3...7)
                let moraleInt = Int.random(in: 3...7)
                
                crewmenAll.append(Crewman(name: name, navSkill: navInt, combatSkill: combatInt, morale: moraleInt, loyalty: 5))
            }
        }
        
        crewGeneration()
        
        print (crewmenAll)

        
        // Do any additional setup after loading the view.
    }

    
}

