//
//  CGDSecondViewController.m
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDSecondViewController.h"
#import "CGDFirstViewController.h"
#import "CGDThirdViewController.h"
#import "CGDFourthViewController.h"
#import "CGDTableViewController.h"
#import <MapKit/MapKit.h>

@interface CGDSecondViewController ()

@end

@implementation CGDSecondViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CLLocationCoordinate2D location;
    location.latitude = 36.99764;
    location.longitude = -79.891977;
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
