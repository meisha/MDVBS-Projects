//
//  TriangleClass.m
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "TriangleClass.h"
#import "ShapeClass.h"

@implementation TriangleClass
-(id)init
{
    if (self = [super init])
    {
        shapeTypes = 0;
        name = @"Triangle Shape";
        numSides = 3;
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
    area = (int) (0.5f * (height * base));
    NSLog(@"The Area of this %@ is %i", name, area);
    return area;
}


@end
