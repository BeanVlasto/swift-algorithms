//
//  UnknownTest.swift
//  Standard Algorithms
//
//  Created by Vlasto, Benedict (JDN) on 14/11/2019.
//  Copyright © 2019 Vlasto, Benedict (JDN). All rights reserved.
//

import XCTest

class Unknown_Test: XCTestCase {

    func testArrayAdderWithMultipleIntegerArraysReturnsSumOfFirstAndLastElement() {
        
        //arrange
        let unknown = Unknown()
        let testCases = [(array: [5,2,321,53,4], expected: 9), (array:[4], expected: 8), (array: [], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.arrayAdder(data: testCase.array)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testModeCalculatorWithMultipleSortedIntegerArraysReturnsModeOfArray() {
        
        //arrange
        let unknown = Unknown()
        let testCases = [(array: [-1,-1,1,1,1,4,5,7,12,13,13], expected: 1), (array: [3,7,7], expected: 7)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.mode(data: testCase.array)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testSecondSmallestValueWithMulitpleIntegerArraysReturnsSecondSmallestValueInArray() {
        
        //arrange
        let unknown = Unknown()
        let testCases = [(array: [7,13,4,143,43,1,1,2], expected: 2), (array: [7,3], expected: 7), (array: [6], expected: nil)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.secondSmallestValue(data: testCase.array)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testModeOfUnsortedArrayWithMultipleIntegerArraysReturnsModeOfArrays() {
        
        //arrange
        let unknown = Unknown()
        let testCases = [(array: [7,13,4,143,43,1,1,2], expected: 1), (array: [3,7,3], expected: 3)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.modeOfUnsortedArray(data: testCase.array)
            XCTAssertEqual(actual, testCase.expected)
        }
    }

}
