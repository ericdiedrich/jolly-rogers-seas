//
//  jolly_rogersTests.swift
//  jolly-rogersTests
//
//  Created by Code Nation on 10/01/2020.
//  Copyright © 2020 Code Nation. All rights reserved.
//

import XCTest
@testable import jolly_rogers

class jolly_rogersTests: XCTestCase {

    var crewNames =
    ["Chance", "Bruno", "Toby", "Damien", "Rafael", "Domenic", "Weston", "Edison", "Chris", "Grant", "Cortez", "Darren", "Nicolas", "Everette", "Jason", "Vicente", "Noe", "Ricky", "Ivory", "Thomas", "Guillermo", "Isreal", "Ben", "Winfred", "Lincoln", "Kareem", "Antwan", "Greg", "Lawrence", "Corey", "Todd", "Jeffery", "Rayford", "Julio", "Manual", "Chi", "Bradford", "Devon", "Bryan", "Andreas", "Don", "Erik", "Bobbie", "Tyree", "Felipe", "Clifton", "Carrol", "Kasey", "Cliff", "Jack"]
    
    
    var crewmenAll = [Crewman]?
    
    func generateCrew()
    {
        for _ in 1...25
        {
            let x = Int.random(in: 0..<50)
            let name = crewNames[x]
            var name:Crewman!
            crewmenAll.append(name)
            print(crewmenAll)
        }
    }
    
    
    override func setUp() {
        
        for _ in crewmenAll
        {
            let navInt = Int.random(int: 3...7)
            let combatInt = Int.random(int: 3...7)
            let moraleInt = Int.random(int: 3...7)
            
            name = Crewman(name: Name, navSkill: navInt, combatSkill: combatInt, morale: moraleInt, loyalty: 5)
            
            
        }
        
//        var name: String!
//        var navSkill: Int!      // #/10
//        var combatSkill: Int!   // #/10
//        var morale: Int!        // #/10
//        var loyalty: Int!
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
