//
//  ViewController.swift
//  InterviewPrep
//
//  Created by Joel Arcos on 11/15/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = LinkedList()
        //list.setupNodes()
        list.insert(value: 1)
        list.insert(value: 2)
        list.displayItems()
    }


}

