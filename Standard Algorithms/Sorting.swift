//
//  Sorting.swift
//  Standard Algorithms
//
//  Created by Vlasto, Benedict (JDN) on 07/11/2019.
//  Copyright © 2019 Vlasto, Benedict (JDN). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        var swapMade = true
        while swapMade == true {
          swapMade = false
          for number in 0..<(array.count - 1) {
            if array[number] > array[number + 1] {
              let temp = array[number]
              array[number] = array[number + 1]
              array[number + 1] = temp
              swapMade = true
            }
          }
        }
        return array
    }
    
    func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
        var sortedArray = [Int]()
        var leftIndex = 0
        var rightIndex = 0
        while leftIndex < leftArray.count {
            while rightIndex < rightArray.count {
                if leftArray[leftIndex] < rightArray[rightIndex] || leftIndex == leftArray.count {
                    sortedArray.append(leftArray[leftIndex])
                    leftIndex += 1
                } else if rightArray[rightIndex] <= leftArray[leftIndex] || rightIndex == rightArray.count {
                    sortedArray.append(rightArray[rightIndex])
                    rightIndex += 1
                }
            }
        }
        return sortedArray
    }
}
