//
//  RectangleClass.m
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "RectangleClass.h"
#import "ShapeClass.h"

@implementation RectangleClass
-(id)init
{
    if (self = [super init])
    {
        shapeTypes = 2;
        name = @"Rectangle Shape";
        numSides = 4;
        height = 5;
        base = 3;
    }
    return self;
}
-(NSString*)GetName
{
    NSLog(@"%@", name);
    return name;
}
-(int)GetNumSides
{
    NSLog(@"This should show %i sides", numSides);
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
-(int)GetArea
{
    area = (int) (height * base);
    NSLog(@"The Area of this %@ is %i", name, area);
    return area;
}
@end
