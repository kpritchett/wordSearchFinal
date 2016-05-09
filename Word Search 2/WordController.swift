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
}

