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
    
    var cardView: UIView!
    var back: UIImageView!
    var showingBack = false
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var descView: UITextView!
    
    @IBOutlet var isMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var picName = self.classRosterItem.studentPic
        var nextImage = UIImage(named: picName)
        imageView.image = nextImage
        var desc = self.classRosterItem.studentDesc
        descView.text = desc
        self.view.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 235/255, alpha: 1.0)
        if self.classRosterItem.isMe {
            isMeButton.hidden = false
            
            back = UIImageView(image: UIImage(named: ""))
            let singleTap = UITapGestureRecognizer(target: self, action: Selector("tapped"))
            singleTap.numberOfTapsRequired = 1
            
            let screenWidth = self.view.frame.size.width
            let screenHeight = self.view.frame.size.height
            let rect = CGRectMake((screenWidth / 2), 20, screenWidth, screenHeight)
            cardView = UIView(frame: rect)
            cardView.addGestureRecognizer(singleTap)
            cardView.userInteractionEnabled = true
            cardView.addSubview(back)
            view.addSubview(cardView)
        }
        else {
            isMeButton.hidden = true
        }
    }
    
    func tapped() {
        if (showingBack) {
            UIView.transitionFromView(back, toView: imageView, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: nil)
        }
        else {
            UIView.transitionFromView(imageView, toView: back, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: nil)
        }
        showingBack = !showingBack
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
