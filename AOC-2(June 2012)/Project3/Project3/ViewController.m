//
//  ViewController.m
//  Project3
//
//  Created by Meisha Ray on 6/6/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"

@interface ViewController ()
@end

@implementation ViewController
//::::::::::::ADD EVENT BUTTON ONCLICK ACTION - TAKES YOU TO THE PAGE TO INPUT YOUR EVENT:::::::::::::::
-(IBAction)onClickAddButton:(id)sender
{    
    EventViewController *eventView = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
    if (eventView != nil)
    {
        eventView.delegate = self;        
        [self presentModalViewController:eventView animated:TRUE];
    }
}
//:::::::::::DID CLOSE METHOD - EVENT STRING:::::::::::::
-(void)DidClose:(NSString*)eventString
{
    textView.text = [textView.text stringByAppendingString:eventString];
}
//:::::::::KEYBOARD CLOSING ACTION - CLOSES BY TOUCHING BUTTON:::::::::::::::::::::
-(IBAction)onCloseKeyBoard:(id)sender
{
    [textView resignFirstResponder];
}
- (void)viewDidLoad
{
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

@end
