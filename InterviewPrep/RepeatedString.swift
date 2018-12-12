//
//  RepeatedString.swift
//  TEST-SockMerchant
//
//  Created by Joel Arcos on 11/11/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

/* hackerRank
 I am getting a string like aba and repeating it until I reach n characters
 Then I'm counting how many times a certain letter appears in that range.
 I'm using recursion to figure this out, the while loop will stop the recursion.
 */


class RepeatedString {

    var originalString: String!
    var characterCount = 0
    
    @discardableResult func repeatedString(str: String, n: Int) -> Int {

        originalString = str
        let mutString = str
        traverseString(string: mutString, n: n)
        return self.characterCount

    }
    
    fileprivate func traverseString(string: String, n: Int) {
        
        var mutString: String
        while string.count <= n {
            mutString = string + originalString
            if mutString.count >= n {
                let adjustedAmount = mutString.count - n
                //let shortenedString = mutString.dropLast(adjustedAmount)
            } else {
                print("mutString: \(mutString)")
                print("mutString.count: \(mutString.count)")
                traverseString(string: mutString, n: n)
            }
        }
    }
}
