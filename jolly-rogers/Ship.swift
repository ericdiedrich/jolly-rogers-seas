//
//  Ship.swift
//  jolly-rogers
//
//  Created by Code Nation on 10/01/2020.
//  Copyright © 2020 Code Nation. All rights reserved.
//

import UIKit
import Foundation

func repairBoatFunction(){
    let repairPrice = PirateShip.health -= 100
    gold -= repairPrice
    PirateShip.health = 100
    print("Ship repaired to 100 Health")
    print("This repair cost \(repairPrice)")
    print("You now have\(gold)Gold")
}

func upgradeBoatFunction(){
    gold -= upgradePrice
    upgradePrice += 15
    PirateShip.speed += 20
    PirateShip.condition += 10
}
