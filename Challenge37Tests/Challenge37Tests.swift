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
    
    let expectedAnswer2 = [
        ["Nectarine"],
        ["Grapes"],
        ["Grapes", "Nectarine"],
        ["Pear"],
        ["Pear", "Nectarine"],
        ["Pear", "Grapes"],
        ["Pear", "Grapes", "Nectarine"],
        ["Apple"],
        ["Apple", "Nectarine"],
        ["Apple", "Grapes"],
        ["Apple", "Grapes", "Nectarine"],
        ["Apple", "Pear"],
        ["Apple", "Pear", "Nectarine"],
        ["Apple", "Pear", "Grapes"],
        ["Apple", "Pear", "Grapes", "Nectarine"],
        ["Orange"],
        ["Orange", "Nectarine"],
        ["Orange", "Grapes"],
        ["Orange", "Grapes", "Nectarine"],
        ["Orange", "Pear"],
        ["Orange", "Pear", "Nectarine"],
        ["Orange", "Pear", "Grapes"],
        ["Orange", "Pear", "Grapes", "Nectarine"],
        ["Orange", "Apple"],
        ["Orange", "Apple", "Nectarine"],
        ["Orange", "Apple", "Grapes"],
        ["Orange", "Apple", "Grapes", "Nectarine"],
        ["Orange", "Apple", "Pear"],
        ["Orange", "Apple", "Pear", "Nectarine"],
        ["Orange", "Apple", "Pear", "Grapes"],
        ["Orange", "Apple", "Pear", "Grapes", "Nectarine"],
    ]
    
    func testBasic() throws {
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
//        measure {
        let result = possibleLunches(fruits: largeFruitSelection)
        XCTAssertEqual(65535, result.count)
//        }
    }
    
    func testBasic2() throws {
        measure {
            let result = possibleLunches2(fruits: fruits)
            
//                    for item in result {
//                        print(item)
//                    }
            
            XCTAssertEqual(31, result.count)
            XCTAssertEqual(expectedAnswer, result)
        }
    }
    
    func testBasic3() throws {
        measure {
            let result = possibleLunches3(fruits: fruits)
            for row in result {
                print(row)
            }
            XCTAssertEqual(31, result.count)
            XCTAssertEqual(expectedAnswer2, result)
        }
    }
    
    func test_largeSelection2() throws {
//        measure {
        let result = possibleLunches3(fruits: largeFruitSelection)
        XCTAssertEqual(65535, result.count)
//        }
    }
}
