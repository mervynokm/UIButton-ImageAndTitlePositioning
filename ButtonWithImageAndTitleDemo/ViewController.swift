//
//  ViewController.swift
//  ButtonWithImageAndTitleDemo
//
//  Created by Mervyn Ong on 24/10/14.
//  Copyright (c) 2014 mervynokm. All rights reserved.
//
//
//
//  The MIT License (MIT)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        button.set(image: #imageLiteral(resourceName: "shout"), title: "Shout", titlePosition: .top, additionalSpacing: 30.0, state: .normal)
        thirdButton.set(image: #imageLiteral(resourceName: "shout"), title: "This is an XIB button", titlePosition: .bottom, additionalSpacing: 10.0, state: .normal)
        
        let secondButton = UIButton(type: .system)
        secondButton.frame = CGRect(x: 0, y: 50, width: 100, height: 400)
        secondButton.center = CGPoint(x: view.frame.size.width/2, y: 50)
        let attr = [
            NSFontAttributeName:UIFont(name:"Helvetica", size: 14)!,
            NSForegroundColorAttributeName: UIColor.green
                    ]
        let title = NSAttributedString(string: "Settings", attributes: attr)
        secondButton.tintColor = UIColor.red
        secondButton.set(image: UIImage(named: "settings"), attributedTitle: title, at: .left, width: 0.0, state: .normal)
        view.addSubview(secondButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

