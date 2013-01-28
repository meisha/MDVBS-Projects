//
//  ViewController.h
//  Project4
//
//  Created by Meisha Ray on 6/14/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"


@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UITextView *textView;
    
    IBOutlet UILabel *swipeLabelRight;
    IBOutlet UILabel *swipeLabelLeft;
    
    NSString *eventString;
    IBOutlet UIButton *saveEvents;
    
    //:::::::::GESTURE RECOGNIZERS:::::::::
    UISwipeGestureRecognizer *rightSwiper;
    
    }
//::::::::::::SAVE EVENTS:::::::
-(IBAction)onSaveEvents:(id)sender;

@end
