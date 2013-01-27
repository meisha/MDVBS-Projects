//
//  DetailViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/4/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize careLabel;
@synthesize careName;
@synthesize myImageView;
@synthesize myTextView;


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
	// Do any additional setup after loading the view.
    
    
    careLabel.text = careName;
    //**************SCROLL VIEW*************
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 650)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
