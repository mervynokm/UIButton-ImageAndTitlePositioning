//
//  ViewController.swift
//  ButtonWithImageAndTitleDemo
//
//  Created by Mervyn Ong on 24/10/14.
//  Copyright (c) 2014 mervynokm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.set(image: UIImage(named: "shout"), title: "Shout", at: .Top, width: 30.0, state: .Normal)
        thirdButton.set(image: UIImage(named: "shout"), title: "This is an XIB button", at: .Bottom, width: 10.0, state: .Normal)
        
        let secondButton = UIButton(type: .System)
        secondButton.frame = CGRectMake(0, 50, 100, 400)
        secondButton.center = CGPointMake(view.frame.size.width/2, 50)
        let attr = [
            NSFontAttributeName:UIFont(name:"Helvetica", size: 14)!,
            NSForegroundColorAttributeName: UIColor.greenColor()
                    ]
        let title = NSAttributedString(string: "Settings", attributes: attr)
        secondButton.tintColor = UIColor.redColor()
        secondButton.set(image: UIImage(named: "settings"), attributedTitle: title, at: .Left, width: 0.0, state: .Normal)
        view.addSubview(secondButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

