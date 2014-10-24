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
        button.set(image: UIImage(named: "shout"), title: "Shout", titlePosition: .Top, additionalSpacing: 30.0, state: .Normal)
        thirdButton.set(image: UIImage(named: "shout"), title: "This is an XIB button", titlePosition: .Bottom, additionalSpacing: 10.0, state: .Normal)
        
        var secondButton = UIButton.buttonWithType(.System) as UIButton
        secondButton.frame = CGRectMake(0, 50, 100, 400)
        secondButton.center = CGPointMake(view.frame.size.width/2, 50)
        secondButton.set(image: UIImage(named: "settings"), title: "Settings", titlePosition: .Left, additionalSpacing: 0.0, state: .Normal)
        view.addSubview(secondButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

