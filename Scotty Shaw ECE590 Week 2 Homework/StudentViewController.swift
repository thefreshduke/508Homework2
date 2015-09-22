//
//  StudentViewController.swift
//  Scotty Shaw ECE590 Week 2 Homework
//
//  Created by Scotty Shaw on 9/8/15.
//  Copyright (c) 2015 ___sks6___. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController {
    
    var classRosterItem = ClassRosterItem()
    
    var selectedPicture = 0
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var descView: UITextView!
    
    @IBOutlet var isMeButton: UIButton!
    
    override func viewDidLoad () {
        super.viewDidLoad()
        
        var picName = self.classRosterItem.studentPic
        var nextImage = UIImage(named: picName)
        imageView.image = nextImage
        
        var desc = self.classRosterItem.studentDesc
        descView.text = desc
        
        self.view.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 235/255, alpha: 1.0)
        
        if self.classRosterItem.isMe {
            isMeButton.hidden = false
        }
        else {
            isMeButton.hidden = true
        }
    }
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        self.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
