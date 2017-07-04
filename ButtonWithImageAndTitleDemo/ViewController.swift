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
        button.set(image: UIImage(named: "shout"), title: "Shout", titlePosition: .top, additionalSpacing: 30.0, state: .normal)
        thirdButton.set(image: UIImage(named: "shout"), title: "This is an XIB button", titlePosition: .bottom, additionalSpacing: 10.0, state: .normal)
        
        let secondButton = UIButton(type: .system) as UIButton
        secondButton.frame = CGRect(x:0, y:50, width:100, height:400)
        secondButton.center = CGPoint(x:view.frame.size.width/2, y:50)
        secondButton.set(image: UIImage(named: "settings"), title: "Settings", titlePosition: .left, additionalSpacing: 0.0, state: .normal)
        view.addSubview(secondButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

