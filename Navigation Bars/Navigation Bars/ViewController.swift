//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Garrett McCullough on 3/23/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
   
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBOutlet weak var playButtonItem: UIBarButtonItem!
    @IBAction func playButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        playButtonItem.enabled = false
        pauseButtonItem.enabled = true
        stopButtonItem.enabled = true
    }
    
    @IBOutlet weak var pauseButtonItem: UIBarButtonItem!
    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
        playButtonItem.enabled = true
        pauseButtonItem.enabled = false
        stopButtonItem.enabled = false
    }
    
    @IBOutlet weak var stopButtonItem: UIBarButtonItem!
    @IBAction func stopButton(sender: AnyObject) {
        timer.invalidate()
        pauseButtonItem.enabled = false
        playButtonItem.enabled = false
        stopButtonItem.enabled = false
    }
   
    @IBAction func resetButton(sender: AnyObject) {
        count = 0
//        stopButtonItem.enabled = false
        playButtonItem.enabled = true
//        pauseButtonItem.enabled = false
        displayResult()
    }
    
    func result() {
        count++
        displayResult()
    }
    
    func displayResult() {
        timerLabel.text = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pauseButtonItem.enabled = false
        stopButtonItem.enabled = false
        displayResult()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

