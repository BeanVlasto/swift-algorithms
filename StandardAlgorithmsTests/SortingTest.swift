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
        let testCases = [(input: [1], expected: [1]),(input: [23412,324,100], expected: [100,324,23412])]
     
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
            
        }
    }
    
    func testMergeSortWithMultipleUnsortedIntegerArraysReturnsSortedIntegerArrays() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(array: [10,5,5,23,71,314,6], expected: [5,5,6,10,23,71,314]),(array: [100,50,25,12,6,3,1], expected: [1,3,6,12,25,50,100])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(array: testCase.array)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testLinearSearchReturnsTrueIfTargetValueIsFoundAndFalseIfNotWhenSearchedForInMulitpleArraysOfIntegers() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(array: [5,3,15235,717,42,8], target: 8, expected: true), (array: [554,12,3,13,2,5], target: 8, expected: false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.linearSearch(array: testCase.array, target: testCase.target)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchReturnsTrueIfTargetValueIsFoundAndFalseIfNotWhenSearchedForInMulitpleArraysOfIntegers() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(array: [5,3,15235,717,42,8], target: 8, expected: true), (array: [554,12,3,13,2,5], target: 8, expected: false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.binarySearch(array: testCase.array, target: testCase.target)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [40,3,-6,-1000,17], expected: [-1000,-6,3,17,40]),(input: [23412,324,100], expected: [100,324,23412])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortWithMulitpleIntegerArraysReturnsSortedIntegerArrays() {
        
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [40,3,-6,-1000,17], expected: [-1000,-6,3,17,40]),(input: [23412,324,100], expected: [100,324,23412])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
