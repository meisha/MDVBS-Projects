//
//  ShapeFactory.h
//  Project1
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"

@interface ShapeFactory : NSObject

-(ShapeClass*)GetShape:(int)myShapeType;

@end
