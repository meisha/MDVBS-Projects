//
//  EventViewController.h
//  Project3
//
//  Created by Meisha Ray on 6/6/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

//:::::::::::DEFINED PROTOCOL WITH A METHOD::::::::::::
@protocol EventViewDelegate <NSObject>
@required
-(void)DidClose:(NSString*)eventString;

@end

@interface EventViewController : UIViewController <UITextFieldDelegate>
{
    //::::::CALLBACK TO LET THE EVENTVIEW KNOW ABOUT MY MAIN VIEW CONTROLLER::::::::
    id<EventViewDelegate> delegate;
    
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateChoice;
    NSString *eventString;
    CGRect textViewFrame;
}

//::::::::::::::PROPERTY::::::::::::::
@property (strong) id<EventViewDelegate> delegate;
//:::::::::DATE PICKER PROPERTY & ACTION::::::
-(IBAction)onChange:(id)sender;

//:::::::::INFO BUTTON ACTION:::::::::::::
-(IBAction)onClickinfo:(id)sender;

//:::::::::SAVE BUTTON ACTION:::::::::::::
-(IBAction)onClickSave:(id)sender;

//::::::::::CLOSE KEYBOARD BUTTON::::::
-(IBAction)onCloseKeyBoard:(id)sender;

@end
