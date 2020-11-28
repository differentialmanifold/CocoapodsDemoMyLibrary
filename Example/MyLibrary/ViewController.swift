//
//  ViewController.swift
//  MyLibrary
//
//  Created by differentialmanifold on 11/20/2020.
//  Copyright (c) 2020 differentialmanifold. All rights reserved.
//

import UIKit
import MyLibrary
import DyDemoFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let shape = Shape()
        
        shape.numberOfSides = 7
        
        print(shape.simpleDescription())
        
        let analytics = Analytics()
        analytics.log(message: "this is a demo")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

