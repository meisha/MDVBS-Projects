//
//  InfoViewController.m
//  Project4
//
//  Created by Meisha Ray on 6/14/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "InfoViewController.h"
#import "ViewController.h"
#import "EventViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
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

-(IBAction)onBackBtn:(id)sender
{
    //::::::::::RETURNS TO THE PREVIOUS VIEW::::::::::::::::
    ViewController *mainController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    if (mainController != nil)
    {
        [self dismissModalViewControllerAnimated:TRUE];
    }
    
    
}@end
