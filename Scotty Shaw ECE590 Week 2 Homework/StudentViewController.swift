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
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var fileName = self.classRosterItem.studentPic
        println(fileName)
        var nextImage = UIImage(named: fileName)
        imageView.image = nextImage
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
