//
//  Challenge37Tests.swift
//  Challenge37Tests
//
//  Created by PJ on 31/08/2022.
//

import XCTest
@testable import Challenge37

class Challenge37Tests: XCTestCase {
    
    let fruits = ["Orange", "Apple", "Pear", "Grapes", "Nectarine"]
    let largeFruitSelection = ["Strawberries", "Plums", "Blueberries", "Clementine", "Banana", "Blackberries", "Melon", "Mango", "Kiwifriut", "Pomegranate", "Apricot", "Coconut", "Grapefruit", "Tangerine", "Cherries", "Tomato"]
    //    let fruits = ["a", "b", "c", "d", "e"]
    
    func testBasic() throws {
        let expectedAnswer = [
            ["Apple"],
            ["Apple", "Grapes"],
            ["Apple", "Grapes", "Nectarine"],
            ["Apple", "Grapes", "Nectarine", "Orange"],
            ["Apple", "Grapes", "Nectarine", "Orange", "Pear"],
            ["Apple", "Grapes", "Nectarine", "Pear"],
            ["Apple", "Grapes", "Orange"],
            ["Apple", "Grapes", "Orange", "Pear"],
            ["Apple", "Grapes", "Pear"],
            ["Apple", "Nectarine"],
            ["Apple", "Nectarine", "Orange"],
            ["Apple", "Nectarine", "Orange", "Pear"],
            ["Apple", "Nectarine", "Pear"],
            ["Apple", "Orange"],
            ["Apple", "Orange", "Pear"],
            ["Apple", "Pear"],
            ["Grapes"],
            ["Grapes", "Nectarine"],
            ["Grapes", "Nectarine", "Orange"],
            ["Grapes", "Nectarine", "Orange", "Pear"],
            ["Grapes", "Nectarine", "Pear"],
            ["Grapes", "Orange"],
            ["Grapes", "Orange", "Pear"],
            ["Grapes", "Pear"],
            ["Nectarine"],
            ["Nectarine", "Orange"],
            ["Nectarine", "Orange", "Pear"],
            ["Nectarine", "Pear"],
            ["Orange"],
            ["Orange", "Pear"],
            ["Pear"],
        ]
        
        measure {
            let result = possibleLunches(fruits: fruits)
            
            //        for item in result {
            //            print(item)
            //        }
            
            XCTAssertEqual(31, result.count)
            XCTAssertEqual(expectedAnswer, result)
        }
    }
    
    func test_largeSelection() throws {
        let result = possibleLunches(fruits: largeFruitSelection)
        XCTAssertEqual(65535, result.count)
    }
    
    func testBasic2() throws {
        let expectedAnswer = [
            ["Apple"],
            ["Apple", "Grapes"],
            ["Apple", "Grapes", "Nectarine"],
            ["Apple", "Grapes", "Nectarine", "Orange"],
            ["Apple", "Grapes", "Nectarine", "Orange", "Pear"],
            ["Apple", "Grapes", "Nectarine", "Pear"],
            ["Apple", "Grapes", "Orange"],
            ["Apple", "Grapes", "Orange", "Pear"],
            ["Apple", "Grapes", "Pear"],
            ["Apple", "Nectarine"],
            ["Apple", "Nectarine", "Orange"],
            ["Apple", "Nectarine", "Orange", "Pear"],
            ["Apple", "Nectarine", "Pear"],
            ["Apple", "Orange"],
            ["Apple", "Orange", "Pear"],
            ["Apple", "Pear"],
            ["Grapes"],
            ["Grapes", "Nectarine"],
            ["Grapes", "Nectarine", "Orange"],
            ["Grapes", "Nectarine", "Orange", "Pear"],
            ["Grapes", "Nectarine", "Pear"],
            ["Grapes", "Orange"],
            ["Grapes", "Orange", "Pear"],
            ["Grapes", "Pear"],
            ["Nectarine"],
            ["Nectarine", "Orange"],
            ["Nectarine", "Orange", "Pear"],
            ["Nectarine", "Pear"],
            ["Orange"],
            ["Orange", "Pear"],
            ["Pear"],
        ]
        
        measure {
            let result = possibleLunches2(fruits: fruits)
            
//                    for item in result {
//                        print(item)
//                    }
            
            XCTAssertEqual(31, result.count)
            XCTAssertEqual(expectedAnswer, result)
        }
    }
}
