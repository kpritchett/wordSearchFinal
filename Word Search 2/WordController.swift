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
    var tableViewArray = ["Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word", "Insert Word"]
    override func viewDidLoad()
    {
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myCell: AnyObject = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        myCell.textLabel!!.text = tableViewArray[indexPath.row]
        return myCell as! UITableViewCell
    }
    @IBAction func editButtonTapped(sender: AnyObject)
    {
        let myAlert = UIAlertController(title: "Add Words", message: nil, preferredStyle: .Alert)
        myAlert.addTextFieldWithConfigurationHandler{ (wordOne) -> Void in
            if self.tableViewArray[0] == "Insert Word"
            {
                wordOne.placeholder = "Insert Word"
            }
            else
            {
            wordOne.text! = self.tableViewArray[0]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordTwo) -> Void in
            if self.tableViewArray[1] == "Insert Word"
            {
                wordTwo.placeholder = "InsertWord"
            }
            else
            {
            wordTwo.text! = self.tableViewArray[1]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordThree) -> Void in
            if self.tableViewArray[2] == "Insert Word"
            {
                wordThree.placeholder = "Insert Word"
            }
            else
            {
            wordThree.text! = self.tableViewArray[2]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordFour) -> Void in
            if self.tableViewArray[3] == "Insert Word"
            {
                wordFour.placeholder = "Insert Word"
            }
            else
            {
            wordFour.text! = self.tableViewArray[3]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordFive) -> Void in
            if self.tableViewArray[4] == "Insert Word"
            {
                wordFive.placeholder = "Insert Word"
            }
            else
            {
            wordFive.text! = self.tableViewArray[4]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordSix) -> Void in
            if self.tableViewArray[5] == "Insert Word"
            {
                wordSix.placeholder = "Insert Word"
            }
            else
            {
            wordSix.text! = self.tableViewArray[5]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordSeven) -> Void in
            if self.tableViewArray[6] == "Insert Word"
            {
                wordSeven.placeholder = "Insert Word"
            }
            else
            {
            wordSeven.text! = self.tableViewArray[6]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordEight) -> Void in
            if self.tableViewArray[7] == "Insert Word"
            {
                wordEight.placeholder = "Insert Word"
            }
            else
            {
            wordEight.text! = self.tableViewArray[7]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordNine) -> Void in
            if self.tableViewArray[8] == "Insert Word"
            {
                wordNine.placeholder = "Insert Word"
            }
            else
            {
            wordNine.text! = self.tableViewArray[8]
            }
        }
        myAlert.addTextFieldWithConfigurationHandler{ (wordTen) -> Void in
            if self.tableViewArray[9] == "Insert Word"
            {
                wordTen.placeholder = "Insert Word"
            }
            else
            {
            wordTen.text! = self.tableViewArray[9]
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        myAlert.addAction(cancelAction)
        let addAction = UIAlertAction(title: "Confirm", style: .Default) { (addAction) -> Void in
            self.tableViewArray[0] = myAlert.textFields![0].text!
            self.tableViewArray[1] = myAlert.textFields![1].text!
            self.tableViewArray[2] = myAlert.textFields![2].text!
            self.tableViewArray[3] = myAlert.textFields![3].text!
            self.tableViewArray[4] = myAlert.textFields![4].text!
            self.tableViewArray[5] = myAlert.textFields![5].text!
            self.tableViewArray[6] = myAlert.textFields![6].text!
            self.tableViewArray[7] = myAlert.textFields![7].text!
            self.tableViewArray[8] = myAlert.textFields![8].text!
            self.tableViewArray[9] = myAlert.textFields![9].text!
            self.myTableView.reloadData()
        }
        myAlert.addAction(addAction)
        self.presentViewController(myAlert, animated: true, completion: nil)

    }
}

    
