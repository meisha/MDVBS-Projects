//
//  DetailViewControllerViewController.m
//  Project1
//
//  Created by Meisha Ray on 6/28/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "DetailViewControllerViewController.h"
#import "ViewController.h"

@interface DetailViewControllerViewController ()

@end

@implementation DetailViewControllerViewController
@synthesize detailLabel;
@synthesize details;
@synthesize models;
@synthesize modelLabel;
@synthesize delegate;

-(void)viewWillAppear:(BOOL)animated
{
    detailLabel.text = details;
    [super viewWillAppear:animated];
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

- (void)viewDidLoad
{
    self.navigationItem.title = @"Hot Rods";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.detailLabel = nil;
    self.details = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}//:::::::::CLOSE VIEW::::::::::
-(IBAction)onClose:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}
@end
