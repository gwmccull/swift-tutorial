//
//  ViewController.swift
//  controlling keyboard
//
//  Created by Garrett McCullough on 3/28/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var labelField: UILabel!
    @IBAction func button(sender: AnyObject) {
        labelField.text = textInput.text
        
        textInput.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textInput.resignFirstResponder()
        
        return true
    }
}

