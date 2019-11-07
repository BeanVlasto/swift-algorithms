//
//  Sorting Test.swift
//  StandardAlgorithmsTests
//
//  Created by Vlasto, Benedict (JDN) on 07/11/2019.
//  Copyright © 2019 Vlasto, Benedict (JDN). All rights reserved.
//

import XCTest

class Sorting_Test: XCTestCase {
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [1], expected: [1]),(input: [100,23412,324], expected: [100,324,23412])]
     
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
            
        }
    }
    
    func testMergeWithTwoIntegerArraysReturnsInOrderMergedIntegerArray() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(array1: [2,5], array2: [1,6], expected: [1,2,5,6]),(array1: [3,6], array2: [2,7], expected: [2,3,6,7])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.merge(leftArray: testCase.array1, rightArray: testCase.array2)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
}
