//
//  ViewController.h
//  Project03
//
//  Created by Meisha Ray on 4/19/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
////:::::::::CALLING COMPARISON METHOD:::::::
-(BOOL)compareNumber:(NSInteger)num1 compare2:(NSInteger)compare2;


////:::::::::CALLING ADDITION METHOD:::::::::
-(NSInteger)addInt1:(NSInteger)int1 int2:(NSInteger)int2;


////::::::::::CALLING APPEND METHOD::::::::::
-(NSMutableString*)appendString:(NSString*)appendString appendString2:(NSString*)appendString2;


////::::::::::::CALLING DisplayAlertWithString METHOD::::::::
-(void) displayAlertWithNSNumber:(NSNumber*)myVars;


@end
