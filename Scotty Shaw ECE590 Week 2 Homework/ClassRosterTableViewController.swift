//
//  ClassRosterTableViewController.swift
//  Scotty Shaw ECE590 Week 2 Homework
//
//  Created by Scotty Shaw on 9/8/15.
//  Copyright (c) 2015 ___sks6___. All rights reserved.
//

import UIKit

class ClassRosterTableViewController: UITableViewController {
    
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
    
    let information: [String] = [
        "TC Dong is from South Africa and studies CS. Her best programming languages are C and Java, and she last worked at IBM. She enjoys violin and figure skating in her free time, and she wants to build an education app.",
        "Weidong Duan is from China and studies ECE masters. His best programming languages are Java and C++, and he has never worked before. He enjoys swimming and movies in his free time, and he wants to build an app that helps people make friends and share interests.",
        "Shuai Fu is from China and studies ECE masters. His best programming languages are C and Java, and he has never worked before. He enjoys table tennis and piano in his free time, and he wants to build maybe a game.",
        "Shaoyi Han is from China and studies ECE masters. Her best programming languages are C and C++, and she has never worked before. She enjoys piano and dancing in her free time, and she does not have any app ideas yet.",
        "Rahul Harikrishnan is from Washington and studies ECE. His best programming languages are Java and Python, and he last worked at Apptio. He enjoys cricket and hiking in his free time, and he does not have any app ideas yet.",
        "Wenting Hu is from China and studies ECE masters. Her best programming languages are C and C++, and she has never worked before. She enjoys piano and computer games in her free time, and she wants to build a scheduling app using notifications to avoid procrastination.",
        "Jingxiong Huang is from China and studies ECE masters. His best programming languages are C++ and Python, and he has never worked before. He enjoys swimming and mobile phone games in his free time, and he wants to build maybe a game.",
        "Zhuo Jia is from China and studies ECE masters. His best programming languages are C++ and Java, and he last worked at a Chinese start-up. He enjoys cooking and photography in his free time, and he does not have any app ideas yet.",
        "Deyu Jiao is from China and studies ECE masters. His best programming languages are Java and C++, and he last worked at a Chinese internship. He enjoys choir and piano in his free time, and he does not have any app ideas yet.",
        "Allan Kiplagat is from Kenya and studies ECE/CS. His best programming languages are Java and Ruby, and he last worked at a start-up. He enjoys guitar and jogging in his free time, and he does not have any app ideas yet.",
        "Ashwin Kommajesula is from New Jersey and studies ECE/CS. His best programming languages are Java and C, and he last worked at Quicken Loans. He enjoys violin and cooking in his free time, and he does not have any app ideas yet.",
        "Austin Kyker is from Indiana and studies ECE/CS. His best programming languages are JavaScript and Java, and he last worked at eBay. He enjoys basketball and golf in his free time, and he does not have any app ideas yet.",
        "Hao Li is from China and studies ECE masters. His best programming languages are C++ and Java, and he has never worked before. He enjoys basketball and movies in his free time, and he does not have any app ideas yet, maybe a game.",
        "Jiancheng Li is from China and studies ECE masters. His best programming languages are C and Java, and he has never worked before. He enjoys swimming and computer games in his free time, and he wants to build an online system to share fantastic foods you had",
        "Guoshan Liu is from China and studies ECE masters. Her best programming languages are C++ and Java, and she has never worked before. She enjoys piano and music in her free time, and she does not have any app ideas yet.",
        "Mingming Lu is from China and studies ECE masters. His best programming languages are C and Java, and he has never worked before. He enjoys basketball and working out in his free time, and he does not have any app ideas yet.",
        "Xin Lu is from China and studies ECE masters. His best programming languages are C++ and Go, and he last worked at a Chinese start-up. He enjoys running and table tennis in his free time, and he wants to build an expense tracking app.",
        "Hong Jin is from China and studies ECE masters. His best programming languages are C and C++, and he has never worked before. He enjoys basketball and computer games in his free time, and he wants to build an airfare search app.",
        "Chase Malik is from Missouri and studies ECE/CS/Math. His best programming languages are Java and C, and he last worked at Sporting Innovation. He enjoys video games and watching sports in his free time, and he does not have any app ideas yet.",
        "Julien Mansier is from Florida and studies ECE. His best programming languages are C++ and Java, and he last worked in the auto industry. He enjoys football and brewing beer in his free time, and he wants to build a BI tool.",
        "Greg McKeon is from New York and studies ECE/CS. His best programming languages are Java and JavaScript, and he last worked at American Express. He enjoys Netflix and baseball in his free time, and he does not have any app ideas yet.",
        "Weichen Ning is from China and studies ECE masters. His best programming languages are C and C++, and he last worked at Cisco. He enjoys movies and badminton in his free time, and he does not have any app ideas yet.",
        "Zachary Podbela is from New York and studies ECE/CS. His best programming languages are Java and Python, and he last worked at Capital One Labs. He enjoys music and flying in his free time, and he does not have any app ideas yet.",
        "Scotty Shaw is from Texas and studies CS. His best programming languages are Java and Objective C, and he last worked at HackWare, LLC. He enjoys basketball and traveling in his free time, and he wants to build Google map with weather display or a Dos Equis Alarm Clock.",
        "Emmanuel Shiferaw is from Ethiopia/Raleigh and studies ECE/CS. His best programming languages are Java and C#, and he last worked at the DiVE. He enjoys reading and football in his free time, and he wants to build an iPad app that connects with virtual reality experience.",
        "Weiqi Wei is from China and studies ECE masters. His best programming languages are C++ and Java, and he has never worked before. He enjoys soccer and table tennis in his free time, and he wants to build an Apple Watch app.",
        "Hao Wu is from China and studies ECE masters. His best programming languages are C and Java, and he last worked at Witricity Corporation. He enjoys tennis and movies in his free time, and he does not have any app ideas yet.",
        "Boyang Xu is from China and studies CS masters. His best programming languages are C and Java, and he last worked at RA. He enjoys soccer and basketball in his free time, and he does not have any app ideas yet.",
        "Shuai Yuan is from China and studies CS masters. His best programming languages are Java and C, and he has never worked before. He enjoys basketball and computer games in his free time, and he does not want to build a game!",
        "Ran Zhou is from China and is studies Masters of Engineering. Her best programming languages are C and C++, and she last worked at Schneider Electrics in China. She enjoys violin and swimming in her free time, and she wants to build a fitness app."
    ]
    
    var classRosterItems = [ClassRosterItem]()
    
    var studentViewController = StudentViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        self.tableView.reloadData()
    }
    
    func loadInitialData() {
        for i in 0...(students.count - 1) {
            var item = ClassRosterItem()
            item.studentName = students[i]
            item.studentPic = "\(students[i]).JPG"
            
            item.studentDesc = "\(information[i])"
            
            if students[i] == "Scotty Shaw" {
                item.isMe = true
            }
            self.classRosterItems.append(item)
        }
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.classRosterItems.count
    }
    
    override func tableView (tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ClassRosterProtoCell", forIndexPath: indexPath) as! UITableViewCell
        let tempClassRosterItem: ClassRosterItem = self.classRosterItems[indexPath.row]
        
        var emoji = ""
        
        if tempClassRosterItem.isMe {
            emoji = "\u{1F3C0}"
        }
        
        var newString = emoji + " " + tempClassRosterItem.studentName + " " + emoji
        cell.textLabel?.text = newString
        cell.accessoryType = UITableViewCellAccessoryType.None
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Left
        cell.textLabel?.font = UIFont(name: "HelveticaNueue", size: CGFloat(40))
        cell.backgroundColor = UIColor.whiteColor()
        if (tempClassRosterItem.studentViewed) {
            newString += " (viewed)"
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let studentDisplayNavigationController = segue.destinationViewController as! UINavigationController
        studentViewController = studentDisplayNavigationController.topViewController as! StudentViewController
    }
}
