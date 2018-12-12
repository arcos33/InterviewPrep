//
//  SockMerchant.swift
//  TEST-SockMerchant
//
//  Created by Joel Arcos on 11/11/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

// this is a challenge from hackerrank
// this sample data are socks, each sock is a certain shoe size
// figure out how many pairs of socks with the same corresponding size can be made.
// don't count any extra socks.
// let socks = [4, 5, 5, 5, 6, 6, 4, 1, 4, 4, 3, 6, 6, 3, 6, 1, 4, 5, 5, 5]
// Write a fuction that takes in an array of Ints and figures out how many pairs can be produced
// still working on this one

class SockMerchant {
    @discardableResult func findPairs(numberOfPairs n: Int, ar: [Int]) -> Int {
        
        var sockCountBySockId = [Int: Int]()
        
        for id in ar {
            if sockCountBySockId[id] != nil {
                sockCountBySockId[id] = sockCountBySockId[id]! + 1
            } else {
                sockCountBySockId[id] = 1
            }
        }
        
        
        var totalPairs = 0
        
        for (_, value) in sockCountBySockId {
            if value % 2 == 0 {
                totalPairs += value / 2
            } else if value > 1 {
                let newValue = value - 1
                let finalValue = newValue / 2
                totalPairs += finalValue
            }
        }
        return totalPairs
    }
}
