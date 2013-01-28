//
//  ViewController.m
//  Project4
//
//  Created by Meisha Ray on 6/14/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"

@interface ViewController ()
@end
@implementation ViewController

//:::::::::::DID CLOSE METHOD - EVENT STRING:::::::::::::
-(void)DidClose:(NSString*)eventString
{
    textView.text = [textView.text stringByAppendingString:eventString];
}
//:::::::::::::SAVING DATA::::::::::::
-(IBAction)onSaveEvents:(id)sender
{
    //::::::::CREATES THE STANDARDUSERDEFAULT VARIABLE::::::::  
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
   if (defaults != nil)
   {
        NSString *myeventString = textView.text;
        [defaults setObject:myeventString forKey:@"my_event"];
        //:::::::SYNCHRONIZES THE DATA:::::::
        [defaults synchronize];
        NSLog(@"EVENT WAS SAVED");
  }
}
//:::::::::::RETRIEVING DATA:::::::::::::
- (void)viewDidLoad
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *myeventString = [defaults objectForKey:@"my_event"];
        textView.text = myeventString;
        NSLog(@"SAVE LOADED");
    } 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{    
    [super viewDidAppear:animated];
}
//:::::::::SWIPE RIGHT::::::::::::::::
-(void)viewWillAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabelRight addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}
//:::::SELECTOR::::::::
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        EventViewController *enterEvent = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
        if (enterEvent != nil)
            enterEvent.delegate = self;
        [self presentModalViewController:enterEvent animated:TRUE]; 
        NSLog(@"RIGHT SWIPE WORKED");
    }
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
