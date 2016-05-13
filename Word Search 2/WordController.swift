//
//  WordController.swift
//  Word Search 2
//
//  Created by Student on 5/4/16.
//  Copyright © 2016 kpritchett. All rights reserved.
//

import UIKit
class WordController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    var wordSearch = WordSearchClass!.self
    var tableViewText = [String(), String(), String(), String(), String(), String(), String(), String(), String(), String()]
    override func viewDidLoad()
    {
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell: AnyObject = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        myCell.textLabel!!.text = "Insert Word"
        return myCell as! UITableViewCell
    }
    @IBAction func editButtonTapped(sender: AnyObject)
    {
        let myAlert = UIAlertController(title: "Add Words", message: nil, preferredStyle: .Alert)
        myAlert.addTextFieldWithConfigurationHandler{ (wordOne) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordTwo) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordThree) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordFour) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordFive) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordSix) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordSeven) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordEight) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordNine) -> Void in
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordTen) -> Void in
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        myAlert.addAction(cancelAction)
        let addAction = UIAlertAction(title: "Confirm", style: .Default) { (addAction) -> Void in
            tableViewText =
            
        }
    }
}

    
