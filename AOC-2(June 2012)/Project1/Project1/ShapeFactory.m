//
//  ShapeFactory.m
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"


@implementation ShapeFactory

-(ShapeClass*)GetShape:(int)myShapeType
{
    if (myShapeType == SHAPETYPE_TRIANGLE) //checks shape type
    {
        return [[TriangleClass alloc] init]; //creates a triangle
    }
    else if (myShapeType == SHAPETYPE_SQUARE) //checks shape type
    {
        return [[SquareClass alloc] init]; //creates a square    
    }
    else if (myShapeType == SHAPETYPE_RECTANGLE) //checks shape type
    {
        return [[RectangleClass alloc] init]; //creates a rectangle   
    }
    return nil; //if a shape is passed in that doesn't exist it will return nil
}

@end
