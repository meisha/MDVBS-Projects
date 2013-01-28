//
//  RectangleClass.h
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"

@interface RectangleClass : ShapeClass

-(int)GetNumSides;
-(NSString*)GetName;
-(void)setBase: (int)base;
-(void)setHeight: (int)height;
-(int)GetArea;

@end
