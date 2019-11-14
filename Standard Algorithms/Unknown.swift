//
//  Unknown.swift
//  Standard Algorithms
//
//  Created by Vlasto, Benedict (JDN) on 14/11/2019.
//  Copyright © 2019 Vlasto, Benedict (JDN). All rights reserved.
//

import Foundation

class Unknown {
    
    func arrayAdder(data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0] * 2
        } else {
            return data[0] + data[data.count - 1]
        }
    }
    
    func mode(data: [Int]) -> Int {
        var longestChain = 0
        var currentChain = 0
        var mode = 0
        for counter in 0 ..< data.count {
            if counter == 0 {
                currentChain = 1
                mode = data[counter]
            } else if data[counter] == data[counter - 1] {
                currentChain += 1
                if currentChain > longestChain {
                    mode = data[counter - 1]
                    longestChain = currentChain
                }
            } else {
                if currentChain > longestChain {
                    mode = data[counter - 1]
                    longestChain = currentChain
                    currentChain = 1
                }
                currentChain = 1
            }
        }
        return mode
    }
    
    func secondSmallestValue(data: [Int]) -> Int? {
        
        if data == [] {
            return nil
        }
        
        var smallestValue = data[0]
        for counter in 0 ..< data.count {
            if counter == 0 {
                smallestValue = data[counter]
            } else if data[counter] < data[counter - 1] {
                smallestValue = data[counter]
            }
        }
        
        let data = data.filter{$0 != smallestValue}
        
        if data == [] {
            return nil
        }
        
        smallestValue = data[0]
        for counter in 0 ..< data.count {
            if counter == 0 {
                smallestValue = data[counter]
            } else if data[counter] < data[counter - 1] {
                smallestValue = data[counter]
            }
        }
        return smallestValue
    }
    
    func modeOfUnsortedArray(data: [Int]) -> Int {
        let sorting = Sorting()
        let sortedData = sorting.bubbleSort(data: data)
        //I feel like this isn't how you wanted us to do this task...
        //If I had a bit more time, I'd find how many instances of every number there is, then find the mode.
        var longestChain = 0
        var currentChain = 0
        var mode = 0
        for counter in 0 ..< sortedData.count {
            if counter == 0 {
                currentChain = 1
                mode = sortedData[counter]
            } else if sortedData[counter] == sortedData[counter - 1] {
                currentChain += 1
                if currentChain > longestChain {
                    mode = sortedData[counter - 1]
                    longestChain = currentChain
                }
            } else {
                if currentChain > longestChain {
                    mode = sortedData[counter - 1]
                    longestChain = currentChain
                    currentChain = 1
                }
                currentChain = 1
            }
        }
        return mode
    }
}
