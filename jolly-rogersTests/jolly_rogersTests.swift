//
//  jolly_rogersTests.swift
//  jolly-rogersTests
//
//  Created by Code Nation on 10/01/2020.
//  Copyright © 2020 JollyRodgerGamingCo. All rights reserved.
//

import XCTest
@testable import jolly_rogers

class jolly_rogersTests: XCTestCase {

    var crewNames =
    ["Chance", "Bruno", "Toby", "Damien", "Rafael", "Domenic", "Weston", "Edison", "Chris", "Grant", "Cortez", "Darren", "Nicolas", "Everette", "Jason", "Vicente", "Noe", "Ricky", "Ivory", "Thomas", "Guillermo", "Isreal", "Ben", "Winfred", "Lincoln", "Kareem", "Antwan", "Greg", "Lawrence", "Corey", "Todd", "Jeffery", "Rayford", "Julio", "Manual", "Chi", "Bradford", "Devon", "Bryan", "Andreas", "Don", "Erik", "Bobbie", "Tyree", "Felipe", "Clifton", "Carrol", "Kasey", "Cliff", "Jack"]
    
    //Lincoln is no.25
    
    var crewmenAll = [Crewman]()
    
    func generateCrew()
    {
        for i in 1...25
        {
            var (crewNames[i]):Crewman!
            crewmenAll.append(crewNames(i))
            print(crewmenAll)
        }
    }
    
    override func setUp() {
        
        for i in 1...25
        {
            let x = Int.random(in: 0..<50)
            let name = crewNames[x]
            
            let navInt = Int.random(in: 3...7)
            let combatInt = Int.random(in: 3...7)
            let moraleInt = Int.random(in: 3...7)
            
            
            crewmenAll[i] = Crewman(name: name, navSkill: navInt, combatSkill: combatInt, morale: moraleInt, loyalty: 5)
            
            
            // Object fields that need to be filled out:       name       navSkill     combatSkill     morale      loyalty
            //                                                String       Int/10       Int/10         Int/10       5/10
        }
        

        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumberInCrewRoster () {
        XCTAssert(crewmenAll.count == 25)
        //Is there 25 members of crew to pick from?
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
