//
//  AboutViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/4/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

@synthesize webView;

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
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://nakedhermitcrabs.blogspot.com/"]]];
//    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
