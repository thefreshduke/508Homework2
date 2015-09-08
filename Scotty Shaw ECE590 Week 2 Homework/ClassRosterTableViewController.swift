//
//  ClassRosterTableViewController.swift
//  Scotty Shaw ECE590 Week 2 Homework
//
//  Created by Scotty Shaw on 9/8/15.
//  Copyright (c) 2015 ___sks6___. All rights reserved.
//

import UIKit

class ClassRosterTableViewController: UITableViewController {
    
    var classRosterItems = [ClassRosterItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        
    }
    
    func loadInitialData() {
        let students: [String] = [
            "TC Dong",
            "Weidong Duan",
            "Shuai Fu",
            "Shaoyi Han",
            "Rahul Harikrishnan",
            "Wenting Hu",
            "Jingxiong Huang",
            "Zhuo Jia",
            "Deyu Jiao",
            "Allan Kiplagat",
            "Ashwin Mommajesula",
            "Austin Kyker",
            "Hao Li",
            "Jiancheng Li",
            "Guoshan Liu",
            "Mingming Lu",
            "Xin Lu",
            "Hong Jin",
            "Chase Malik",
            "Julien Mansier",
            "Greg McKeon",
            "Weichen Ning",
            "Zachary Podbela",
            "Scotty Shaw",
            "Emmanuel Shiferaw",
            "Weiqi Wei",
            "Hao Wu",
            "Boyang Xu",
            "Shuai Yuan",
            "Ran Zhou"]
        for student in students {
            var item = ClassRosterItem()
            item.studentName = student
            self.classRosterItems.append(item)
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.classRosterItems.count
    }
    
    override func tableView (tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ClassRosterProtoCell", forIndexPath: indexPath) as! UITableViewCell
        let tempClassRosterItem: ClassRosterItem = self.classRosterItems[indexPath.row]
        cell.textLabel?.text = tempClassRosterItem.studentName
        if (tempClassRosterItem.studentViewed) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        return cell
    }
    
    override func tableView (tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        let tappedItem: ClassRosterItem = self.classRosterItems[indexPath.row]
        tappedItem.studentViewed = true
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
