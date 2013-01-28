//
//  ViewController.m
//  Project2
//
//  Created by Meisha Ray on 6/1/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"


@interface ViewController ()

@end

@implementation ViewController
{
    
}
- (void)viewDidLoad
{
    //:::::::::NUMBER INPUT FIELD IS SET TO 0 BY DEFAULT::::::::::::::
    calculator.text = @"0";
    //:::::::::SWITCH IS SET TO OFF AS DEFAULT::::::::::::
    onOffSwitch.on = FALSE;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
[super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
//:::::::::::ON OFF SWITCH ACTION:::::::::::
-(IBAction)onSwitched:(id)sender
{
    UISwitch *mySwitch = (UISwitch*)sender;
    if (mySwitch != nil)
    {
        int tag = mySwitch.tag;
        
        NSString *temp = [NSString stringWithFormat:@"You changed the switch #%d", tag];
        NSLog(@"%@", temp);
    }
}
//::::::::::::::INFO VIEW ACTION:::::::::::::
-(IBAction)onClick:(id)sender
{
    InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
    if (infoView != nil)
    {
        [self presentModalViewController:infoView animated:TRUE];
    }
}


//::::::::::::::CHANGE BG COLOR ACTION:::::::::::::
-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil)
    {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        
        bgLabel.text = [NSString stringWithFormat:@"Change Background Color", selectedIndex];
        if (selectedIndex == BLUE)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedIndex == PURPLE)
        {
            self.view.backgroundColor = [UIColor purpleColor];
        }
        else if (selectedIndex == GREEN)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }    }
}
//:::::::::::::CALCULATOR ACTIONS::::::::::::::::::
-(IBAction)numPressed:(id)sender;
{
    if (onOffSwitch.on != false)
    {
    currentNumber = currentNumber *10 + (float)[sender tag];
    calculator.text = [NSString stringWithFormat:@"%.1f", currentNumber];
    }
}
-(IBAction)operationPressed:(id)sender;
{
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation)
        {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
            case 5:
                currentOperation = 0;
                break;
        }
    }
    currentNumber = 0;
    calculator.text = [NSString stringWithFormat:@"%.1f", result];
    if ([sender tag] == 0) result = 0;
    currentOperation = [sender tag];
}
-(IBAction)cancelOperation;
{
    if (onOffSwitch.on != false)
    {
    currentNumber = 0;
    calculator.text = @"0";
    currentOperation = 0;
    }
}

//::::::::::KEYBOARD VANISH:::::::::
-(IBAction)keyboardVanish:(id)sender
{
    [sender resignFirstResponder];
}

@end
