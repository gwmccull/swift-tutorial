//
//  ViewController.swift
//  Example App
//
//  Created by Garrett McCullough on 2/28/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        myLabel.text = "it worked!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        println("hello world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

