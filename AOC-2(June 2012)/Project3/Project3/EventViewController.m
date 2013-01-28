//
//  EventViewController.m
//  Project3
//
//  Created by Meisha Ray on 6/6/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "EventViewController.h"
#import "InfoViewController.h"
#import "ViewController.h"


@interface EventViewController ()

@end

@implementation EventViewController
//:::::::::::MY DELEGATE:::::::::::::
@synthesize delegate;

//::::::::::::::::TEXTFIELD DELEGATE::::::::::::::::::::
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
    
    return TRUE;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}
//::::::::::DATE PICKER ACTION::::::::::::::
-(IBAction)onChange:(id)sender
{
    UIDatePicker *dates = (UIDatePicker*)sender;
    if (dates != nil)
    {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if(dateFormatter !=nil)
        {
            [dateFormatter setDateFormat:@"MMMM dd, yyyy @ h:mm a"];
        }
        dateChoice = [dateFormatter stringFromDate:dates.date];
        NSLog(@"%@", dateChoice);
    }
}
//::::::::::::::SAVE BUTTON ACTION:::::::::::::
-(IBAction)onClickSave:(id)sender
{    
    if((delegate != nil) && (dateChoice !=nil))
    {
        //::::::::\n = linebreak & \t tab over on line & \" is double quotes:::::::::::
        eventString = [NSString stringWithFormat:@"New Event: \"%@\" \n \t at %@ \n \n", textField.text, dateChoice];
        [delegate DidClose:eventString];
        [self dismissModalViewControllerAnimated:TRUE];
    }
}
//::::::::::::::INFO BUTTON VIEW ACTION:::::::::::::
-(IBAction)onClickinfo:(id)sender
{
    InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
    if (infoView != nil)
    {
        [self presentModalViewController:infoView animated:TRUE];
    }
}
-(IBAction)onCloseKeyBoard:(id)sender
{
    [textField resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        delegate = nil;
    }
    return self;
}
-(void)viewDidLoad
{    
    datePicker.minimumDate = [NSDate date];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)viewWillAppear:(BOOL)animated
{
    
}

@end
