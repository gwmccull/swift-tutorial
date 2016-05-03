//
//  SecondViewController.swift
//  to do list
//
//  Created by Garrett McCullough on 3/28/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var toDoText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBAction func savePress(sender: AnyObject) {
        items.append(toDoText.text)
        
        toDoText.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(items, forKey: "items")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        toDoText.resignFirstResponder()
        
        return true
    }

}

