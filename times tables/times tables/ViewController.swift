//
//  ViewController.swift
//  times tables
//
//  Created by Garrett McCullough on 3/24/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var timesLabel: UILabel!
    var numOfRows = 20
    var number = 1
    
    @IBOutlet weak var tableItem: UITableView!
    
    @IBOutlet weak var sliderItem: UISlider!
    @IBAction func sliderAction(sender: AnyObject) {
        updateView()
    }
    
    func updateView() {
        number = Int(sliderItem.value)
        
        timesLabel.text = "\(number) x"

        tableItem.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRows
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "\(indexPath.row + 1) is \(number * (indexPath.row + 1 ))"
        
        return cell
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

