//
//  ViewController.swift
//  Is It Prime
//
//  Created by Garrett McCullough on 3/22/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        var num = number.text.toInt()
        
        var ans = num != 1 && num > 1
        
        for var ii = 2; ii < num! >> 1; ii++ {
            if num! % ii == 0 {
                ans = false
                break
            }
        }
        
        if ans {
            answer.text = "Yes, that's a prime."
        } else {
            answer.text = "No, that's not a prime."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

