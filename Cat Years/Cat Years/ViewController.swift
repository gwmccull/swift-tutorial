//
//  ViewController.swift
//  Cat Years
//
//  Created by Garrett McCullough on 3/2/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myInput: UITextField!
    
    @IBAction func myButton(sender: AnyObject) {
        
        var enterAge = myInput.text.toInt()
        
        if enterAge != nil {
            var catYears = enterAge! * 7
        
            myLabel.text = "\(catYears)"
        } else {
            myLabel.text = "Enter an age"
        }
    }
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

