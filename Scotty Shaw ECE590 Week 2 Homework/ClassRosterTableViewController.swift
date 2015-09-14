//
//  ClassRosterTableViewController.swift
//  Scotty Shaw ECE590 Week 2 Homework
//
//  Created by Scotty Shaw on 9/8/15.
//  Copyright (c) 2015 ___sks6___. All rights reserved.
//

import UIKit

class ClassRosterTableViewController: UITableViewController {
    
    let studentNames: [String] = [
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
        "Ashwin Kommajesula",
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
    
    let females : [String] = [
        "TC Dong",
        "Shaoyi Han",
        "Wenting Hu",
        "Guoshan Liu",
        "Ran Zhou"]
    
    let studentLocations = [
        "Emmanuel Shiferaw" : "Ethiopia then North Carolina",
        "Julien Mansier" : "Florida",
        "Ashwin Kommajesula" : "India then New Jersey",
        "Austin Kyker" : "Indiana",
        "Allan Kiplagat": "Kenya",
        "Chase Malik" : "Missouri",
        "Greg McKeon" : "New York",
        "Zachary Podbela" : "New York",
        "TC Dong" : "South Africa",
        "Scotty Shaw" : "Texas",
        "Rahul Harikrishnan" : "Washington"]
    
    let studentDegrees = [
        "TC Dong" : "Bachelors in Comp Sci",
        "Scotty Shaw" : "Bachelors in Comp Sci",
        "Rahul Harikrishnan" : "Bachelors in ECE",
        "Julien Mansier" : "Bachelors in ECE",
        "Allan Kiplagat" : "Bachelors in ECE and CS",
        "Ashwin Kommajesula" : "Bachelors in ECE and CS",
        "Austin Kyker" : "Bachelors in ECE and CS",
        "Greg McKeon" : "Bachelors in ECE and CS",
        "Zachary Podbela" : "Bachelors in ECE and CS",
        "Emmanuel Shiferaw" : "Bachelors in ECE and CS",
        "Chase Malik" : "Bachelors in ECE and CS and Math",
        "Ran Zhou" : "Master of Engineering",
        "Boyang Xu" : "Masters in ECE and CS"]
    
    let studentLanguages = [
        "TC Dong" : "Java, C",
        "Weidong Duan" : "Java, C++",
        "Shuai Fu" : "C, Java",
        "Shaoyi Han" : "C, C++",
        "Rahul Harikrishnan" : "Java, Python",
        "Wenting Hu" : "C, C++",
        "Jingxiong Huang" : "C++, Python",
        "Zhuo Jia" : "C++, Java",
        "Deyu Jiao" : "Java, C++",
        "Allan Kiplagat" : "Java, Ruby",
        "Ashwin Kommajesula" : "Java, C",
        "Austin Kyker" : "JavaScript, Java",
        "Hao Li" : "C++, Java",
        "Jiancheng Li" : "C, Java",
        "Guoshan Liu" : "C++, Java",
        "Mingming Lu" : "C, Java",
        "Xin Lu" : "Go, C++",
        "Hong Jin" : "C, C++",
        "Chase Malik" : "Java, C",
        "Julien Mansier" : "Java, C++",
        "Greg McKeon" : "Java, JavaScript",
        "Weichen Ning" : "C++, C",
        "Zachary Podbela" : "Java, Python",
        "Scotty Shaw" : "Java, Objective C",
        "Emmanuel Shiferaw" : "Java, C#",
        "Weiqi Wei" : "Java, C++",
        "Hao Wu" : "Java, C",
        "Boyang Xu" : "Java, C",
        "Shuai Yuan" : "Java, C",
        "Ran Zhou" : "Java, C"]
    
    let studentJobs = [
        "TC Dong" : "IBM",
        "Rahul Harikrishnan" : "Apptio",
        "Zhuo Jia" : "Chinese start-up",
        "Deyu Jiao" : "Chinese internship involving a cloud address book",
        "Allan Kiplagat" : "Start-up",
        "Ashwin Kommajesula" : "Quicken Loans",
        "Austin Kyker" : "eBay",
        "Xin Lu" : "Chinese start-up involving cloud computing",
        "Chase Malik" : "Sporting Innovation",
        "Julien Mansier" : "Auto industry",
        "Greg McKeon" : "American Express",
        "Weichen Ning" : "Cisco",
        "Zachary Podbela" : "Capital One Labs",
        "Scotty Shaw" : "HackWare, LLC",
        "Emmanuel Shiferaw" : "DiVE",
        "Hao Wu" : "Witricity Corporation",
        "Boyang Xu" : "RA",
        "Ran Zhou" : "Schneider Electrics in China"
    ]
    
    let studentIdeas = [
        "TC Dong" : "An education app",
        "Weidong Duan" : "An app that helps people make friends and share interests",
        "Shuai Fu" : "Maybe a game",
        "Wenting Hu" : "An scheduling app using notifications to avoid procrastination",
        "Jingxiong Huang" : "Maybe a game",
        "Hao Li" : "Maybe a game",
        "Jiancheng Li" : "An online system to share fantastic foods you had",
        "Guoshan Liu" : "Maybe a game",
        "Xin Lu" : "An expense tracking app",
        "Hong Jin" : "An airfare search app",
        "Julien Mansier" : "A BI Tool",
        "Scotty Shaw" : "A modified Google map with weather display or a Dos Equis Alarm Clock",
        "Emmanuel Shiferaw" : "An iPad app that connects with virtual reality experience",
        "Weiqi Wei" : "An Apple Watch app",
        "Shuai Yuan" : "Not a game!",
        "Ran Zhou" : "A fitness app"
    ]
    
    var classRosterItems = [ClassRosterItem]()
    
    var studentViewController = StudentViewController()
    
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
        self.tableView.reloadData()
    }
    
    func loadInitialData() {
        for student in studentNames {
            var item = ClassRosterItem()
            item.studentName = student
            item.studentPic = "\(student).JPG"
            item.studentDesc = ""
            if student == "Scotty Shaw" {
                item.isMe = true
            }
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
        cell.accessoryType = UITableViewCellAccessoryType.None
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Left
        cell.textLabel?.font = UIFont(name: "HelveticaNueue", size: CGFloat(40))
        cell.backgroundColor = UIColor.whiteColor()
        if (tempClassRosterItem.studentViewed) {
            var newString = tempClassRosterItem.studentName + " (viewed)"
            if tempClassRosterItem.isMe {
                newString = newString + "muh"
            }
            cell.textLabel?.text = newString
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            cell.textLabel?.textColor = UIColor.purpleColor()
            cell.textLabel?.textAlignment = .Right
            cell.textLabel?.font = UIFont(name: "CourierNewPS-BoldItalicMT", size: CGFloat(20))
            cell.backgroundColor = UIColor.yellowColor()
        }
        return cell
    }
    
    override func tableView (tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        let tappedItem: ClassRosterItem = self.classRosterItems[indexPath.row]
        studentViewController.classRosterItem.studentPic = tappedItem.studentPic
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
        studentViewController.classRosterItem = tappedItem
        tappedItem.studentViewed = true
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        let studentDisplayNavigationController = segue.destinationViewController as! UINavigationController
        studentViewController = studentDisplayNavigationController.topViewController as! StudentViewController
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
    
    */
}
