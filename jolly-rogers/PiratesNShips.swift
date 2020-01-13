//
//  PiratesNShips.swift
//  jolly-rogers
//
//  Created by Code Nation on 10/01/2020.
//  Copyright © 2020 JollyRodgerGamingCo. All rights reserved.
//

import Foundation

class PirateCrew {
    var CaptainsName: String?
    var navSkill: Int!          //total of crew stats
    var combatSkill: Int!       //total of crew stats
    var morale: Int!            //total of crew stats
    var loyalty: Int!           //total of crew stats
    var experience: Int = 0
    var ship: PirateShip?
    var roster: Array<Any>!
    
//    init(roster: Array<Any>) {
//        self.roster = roster
//    }
    
    
    //Linking the two classes
//    Crewname!.ShipVar = Shipname
//    Shipname!.crewVar = Crewname
}

class PirateShip {
    var ShipsName: String?
    var health: Int = 100       //percentage out of 100
    var speed: Int = 60         // calculated between weight, ballast and condition
    var ballast: Int = 0        //between -50 and 50
    var condition: Int = 50     // #/100
    var crew: PirateCrew?
    
}



