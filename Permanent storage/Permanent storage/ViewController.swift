//
//  ViewController.swift
//  Permanent storage
//
//  Created by Garrett McCullough on 3/28/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Bob", forKey: "name")
        var name = NSUserDefaults.standardUserDefaults().valueForKey("name")! as String
        println(name)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

