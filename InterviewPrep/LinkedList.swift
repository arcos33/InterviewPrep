//
//  LinkedList.swift
//  InterviewPrep
//
//  Created by Joel Arcos on 12/11/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

//class Node {
//    let value: Int
//    let next: Node?
//
//    init(value: Int, next: Node?) {
//        self.value = value
//        self.next = next
//    }
//}
//
//class LinkedList {
//    var head: Node?
//
//    func insert() {
//
//    }
//
//    func displayListItems() {
//        var current = head
//        while current != nil {
//            print(current?.value ?? "")
//            current = current?.next
//        }
//    }
//
//    func setupDummyNodes() {
//        let three = Node(value: 3, next: nil)
//        let two = Node(value: 2, next: three)
//        head = Node(value: 1, next: two)
//    }
//}

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    
    func displayItems() {
        
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    func setupNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        self.head = Node(value: 1, next: two)
        
    }
    
    func insert(value: Int) {
        // empty list
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
}




