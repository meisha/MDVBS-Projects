//
//  ViewController.h
//  Project1
//
//  Created by Meisha Ray on 5/29/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@interface ViewController : UIViewController
{
    UILabel *textLabel0; //Triangle
    UILabel *textLabel1; //Square
    UILabel *textLabel2; //Rectangle
    UILabel *textLabel3; //Author Info
    ShapeClass *shapeClass;
    
}
@end
