//
//  DrawingViewController.swift
//  Scotty Shaw ECE590 Week 2 Homework
//
//  Created by Scotty Shaw on 9/18/15.
//  Copyright (c) 2015 ___sks6___. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController {
    
    @IBOutlet weak var spinningImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0/255, green: 26/255, blue: 87/255, alpha: 1.0)
//        self.view.backgroundColor = drawRect(CGRect)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func drawRect(rect: CGRect)
//    {
//        let context = UIGraphicsGetCurrentContext()
//        
//        let locations: [CGFloat] = [ 0.0, 0.25, 0.5, 0.75 ]
//        
//        let colors = [UIColor.redColor().CGColor,
//            UIColor.greenColor().CGColor,
//            UIColor.blueColor().CGColor,
//            UIColor.yellowColor().CGColor]
//        
//        let colorspace = CGColorSpaceCreateDeviceRGB()
//        
//        let gradient = CGGradientCreateWithColors(colorspace,
//            colors, locations)
//        
//        var startPoint = CGPoint()
//        var endPoint =  CGPoint()
//        
//        startPoint.x = 0.0
//        startPoint.y = 0.0
//        endPoint.x = 600
//        endPoint.y = 600
//        
//        CGContextDrawLinearGradient(context, gradient,
//            startPoint, endPoint, 0)
//    }
}
