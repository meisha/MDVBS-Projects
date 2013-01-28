//
//  SquareClass.m
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "SquareClass.h"
#import "ShapeClass.h"

@implementation SquareClass
-(id)init
{
    if (self = [super init])
    {
        shapeTypes = 1;
        name = @"Square Shape";
        numSides = 4;
        height = 4;
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
