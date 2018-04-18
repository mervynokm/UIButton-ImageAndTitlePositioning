UIButton-ImageAndTitlePositioning
=================================
<br/> 
Copyright (c) 2018 mervynokm. All rights reserved. 
<br/> <br/> 
A Swift-based UIButton extension to enable a button title positioning with respect to the button image.

<br/> 

![image](https://github.com/mervynokm/UIButton-ImageAndTitlePositioning/blob/master/preview.png)

**How to Use it**
_________
It simple! All you have to do is to copy the "ButtonWithImageAndTitleExtension.swift" into your project.

<br/>
In a Swift project no further import is required (but I'm sure you alreay know that!). Simply initialize your button and use the following instance method:

---
```
set(image: UIImage?, title: String, titlePosition: Position, additionalSpacing: CGFloat, state: UIControlState)
```

or for attributed strings,

````
set(image: UIImage?, attributedTitle title: NSAttributedString, at position: Position, width spacing: CGFloat, state: UIControlState)
````

<br/> 
In an Objective-C project, all you have to do is add the file into your project and let XCode generate the necessary Swift files! Then,

---
```
#import "ProductModuleName-Swift.h"
```

and

```
[button setWithImage:(UIImage *) title:(NSString *) titlePosition:(Position) additionalSpacing:(CGFloat) state:(UIControlState)]
```

Ta-dah!!!!
