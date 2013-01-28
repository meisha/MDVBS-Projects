//
//  ViewController.h
//  Project3
//
//  Created by Meisha Ray on 6/6/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"
@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UITextView *textView;
}
//:::::::::ADD EVENT BUTTON:::::::::::: 
-(IBAction)onClickAddButton:(id)sender;

//::::::::::CLOSE KEYBOARD BUTTON::::::
-(IBAction)onCloseKeyBoard:(id)sender;

@end
