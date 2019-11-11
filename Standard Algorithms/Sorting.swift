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
    
    func linearSearch(array: [Int], target: Int) -> Bool {
        var foundIt = false
        for element in array {
          if target == element {
            print("Found it!")
            foundIt = true
            break
          }
        }
        if foundIt == false {
          print("It wasn't in the list.")
        }
        
        return foundIt
    }
    
    func binarySearch(array: [Int], target: Int) -> Bool {
        let sortedArray = bubbleSort(data: array)
        
        var foundIt = false
        var bottom = 0
        var top = sortedArray.count - 1
        var middle = Int((bottom + top) / 2)
        while (foundIt == false) && (bottom <= top) {
            middle = Int((bottom + top) / 2)
            if target == sortedArray[middle] {
                foundIt = true
                return foundIt
            } else if target > sortedArray[middle] {
                bottom = middle + 1
            } else if target < sortedArray[middle] {
                top = middle - 1
            }
        }
        if foundIt == false {
            return foundIt
        }
    }
    
    func quickSort(array: [Int]) -> [Int] {
        if array.count <= 1 {
              return array
          } else {
              let pivot = array[0]
          var left = [Int]()
          var right = [Int]()
              for i in 1..<array.count {
                  let item = array[i]
                  if item < pivot {
                      left.append(item)
                  } else {
                      right.append(item)
                  }
          }
              var finalArray = [Int]()
              finalArray.append(contentsOf: quickSort(array: left))
              finalArray.append(pivot)
              finalArray.append(contentsOf: quickSort(array: right))
              return finalArray
        }
    }
    
    func insertionSort(array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        } else {
            var sortedArray = [Int]()
            for counter in 0 ..< array.count {
                if counter == 0 {
                    sortedArray.append(array[counter])
                } else {
                    for counter2 in 1 ... sortedArray.count {
                        if counter2 == sortedArray.count {
                            sortedArray.insert(array[counter], at: 0)
                            break
                        } else if array[counter] >= sortedArray[sortedArray.count - counter2] {
                            sortedArray.insert(array[counter], at: sortedArray.count - (counter2 - 1))
                            break
                        }
                    }
                }
            }
            return sortedArray
        }
    }
}
			
