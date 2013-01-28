//
//  ShapeClass.m
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass

//init method
-(id)init
{
    self = [super init]; //calls the init method of NSObject
    if (self != nil)
    {
        shapeTypes = 3;
        name = @"myShapes";
        numSides = 0;
        area = 0;
        base = 0;
        height = 0;
    }
    return self;
}
-(NSString*)GetName
{
    NSLog(@"This should return the %@", name);
    return name;
}
-(int)GetArea
{
    area = (height * base);
    NSLog(@"This should return %@ and Area: %i", name, area);
    return area;
}
-(int)GetNumSides
{
    NSLog(@"This should return the %i sides of the shape", numSides);
    return numSides;
}
-(void)setBase:(int)baseNum   
{
    base = baseNum;
}
-(void)setHeight:(int)heightNum
{
    height = heightNum;
}

@end
