//
//  FirstViewController.swift
//  to do list
//
//  Created by Garrett McCullough on 3/28/15.
//  Copyright (c) 2015 GWM. All rights reserved.
//

import UIKit

var items = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    
    @IBOutlet weak var tableItem: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        var item = items[indexPath.row] as NSString
        cell.textLabel?.text = "\(item)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            items.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(items, forKey: "items")
            
            tableItem.reloadData()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        tableItem.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if  NSUserDefaults.standardUserDefaults().valueForKey("items") != nil {
            items = NSUserDefaults.standardUserDefaults().valueForKey("items") as [String]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

