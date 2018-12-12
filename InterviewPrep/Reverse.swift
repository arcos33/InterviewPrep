//
//  ReverseString.swift
//  TEST-SockMerchant
//
//  Created by Joel Arcos on 11/13/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

struct Reverse {
    
    static func reverse(string str: String) -> String  {
        
        let array = str.components(separatedBy: " ")
        
        var reversedArray = [String]()
        
        for word in array.reversed() {
            reversedArray.append(word)
        }
        
        let finalString = reversedArray.joined(separator: " ")
        
        return finalString
    }
    
    static func reverse(numbers nums: [Int]) -> [Int] {
        
        var array = [Int]()
        
        for num in nums.reversed() {
            array.append(num)
        }

        return array
    }
}
