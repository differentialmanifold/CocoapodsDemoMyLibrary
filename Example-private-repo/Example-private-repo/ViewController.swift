//
//  ViewController.swift
//  Example-private-repo
//
//  Created by pixr on 2020/11/20.
//

import UIKit
import MyLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let shape = Shape()
        
        shape.numberOfSides = 7
        
        print(shape.simpleDescription())
    }


}

