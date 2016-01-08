//
//  ViewController.swift
//  FMDB_DEMO
//
//  Created by 丁嘉瑞 on 16/1/8.
//  Copyright © 2016年 Edward Ding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var contacts:[Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Load data from database
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "ContactCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! ContactCell
        
        // Configure Cell Content
        cell.idLabel.text = "\(contacts[indexPath.row].id)"
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.phoneLabel.text = contacts[indexPath.row].phone
        
        return cell
    }
    
    // Left Swipe to delete
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let delAction  = UITableViewRowAction(style: .Default, title: "Delete") {
            (action, indexPath) -> Void in
            
            let toDelId = self.contacts[indexPath.row].id
            // TODO: Delete from database
            
            // Delete from memory
            self.contacts.removeAtIndex(indexPath.row)
            
            // Reload tableView
            tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        return [delAction]
    }
}

