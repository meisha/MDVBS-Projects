//
//  ViewController.h
//  Project2
//
//  Created by Meisha Ray on 6/1/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfoViewController.h"

@interface ViewController : UIViewController 
{
    
    IBOutlet UISwitch *onOffSwitch;
    IBOutlet UILabel *bgLabel;
   
   //:::::::Calculator:::::::::::
    float currentNumber;
    int currentOperation;
    float result;
    IBOutlet UITextField *calculator;
}
//:::::::::::::::::MY BG COLORS::::::::::::::
typedef enum
{
    BLUE=0,
    PURPLE,
    GREEN
}bgColor;

//::::::::::BUTTON CLICKED ACTION:::::::::::::
-(IBAction)onClick:(id)sender;
//::::::::::ON OFF SWITCH ACTION:::::::::::::
-(IBAction)onSwitched:(id)sender;
//::::::::::CHANGE COLOR BUTTONS ACTION::::::::::::
-(IBAction)onChange:(id)sender;
//:::::::::::::CALCULATOR CONTROLS:::::::::::
-(IBAction)numPressed:(id)sender;
-(IBAction)operationPressed:(id)sender;
-(IBAction)cancelOperation;
//::::::::::::::KEYBOARD VANISHES:::::::::::::
-(IBAction)keyboardVanish:(id)sender;
@end
