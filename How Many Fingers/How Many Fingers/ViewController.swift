//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Garrett McCullough on 3/14/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuess: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        var randomNum = Int(arc4random_uniform(6))
        var guess = userGuess.text.toInt()
        
        if guess == randomNum {
            responseLabel.text = "You're right!"
        } else {
            responseLabel.text = "Wrong!"
        }
    }
    
    @IBOutlet weak var responseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

