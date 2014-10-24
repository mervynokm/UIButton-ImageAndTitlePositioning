//
//  ButtonWithImageAndTitleExtension.swift
//  ButtonWithImageAndTitleDemo
//
//  Created by Mervyn Ong on 24/10/14.
//  Copyright (c) 2014 mervynokm. All rights reserved.
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

enum Position {
    case Top
    case Bottom
    case Left
    case Right
}

extension UIButton {
//    This method sets an image and title for a UIButton and
//    repositions the titlePosition with respect to the button image.
//    Add additionalSpacing between the button image & title as required
    
    func set(image anImage: UIImage?, title: NSString!, titlePosition: Position, additionalSpacing: CGFloat, state: UIControlState){
        self.imageView?.contentMode = .Center
        self.setImage(anImage?, forState: state)
        
        positionLabelRespectToImage(title!, position: titlePosition, spacing: additionalSpacing)
        
        self.titleLabel?.contentMode = .Center
        self.setTitle(title?, forState: state)
    }
    
    private func positionLabelRespectToImage(title: NSString, position: Position, spacing: CGFloat) {
        let imageSize = self.imageRectForContentRect(self.frame)
        let titleFont = self.titleLabel?.font!
        let titleSize = title.sizeWithAttributes([NSFontAttributeName: titleFont!])
        
        var titleInsets: UIEdgeInsets
        var imageInsets: UIEdgeInsets
        
        switch (position){
        case .Top:
            titleInsets = UIEdgeInsets(top: -(imageSize.height + titleSize.height + spacing), left: -(imageSize.width), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        case .Bottom:
            titleInsets = UIEdgeInsets(top: (imageSize.height + titleSize.height + spacing), left: -(imageSize.width), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        case .Left:
            titleInsets = UIEdgeInsets(top: 0, left: -(imageSize.width * 2), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -(titleSize.width * 2 + spacing))
        case .Right:
            titleInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -spacing)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        self.titleEdgeInsets = titleInsets
        self.imageEdgeInsets = imageInsets
    }
}