//
//  ShapeClass.h
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
//Constants
typedef enum
{
    SHAPETYPE_TRIANGLE=0,
    SHAPETYPE_SQUARE,
    SHAPETYPE_RECTANGLE
}EShapeTypes;

@interface ShapeClass : NSObject
{
    NSString *name;
    EShapeTypes shapeTypes;
    int numSides;
    int area;
    int height;
    int base;
}

-(NSString*)GetName;
-(void)setBase: (int)base;
-(void)setHeight: (int)height;
-(int)GetNumSides;
-(int)GetArea;


@end
