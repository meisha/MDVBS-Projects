//
//  ViewController.m
//  Project1
//
//  Created by Meisha Ray on 5/29/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //background color    
    self.view.backgroundColor = [UIColor grayColor]; 

    
    //Triangle Shape
    textLabel0 = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 140.0f, 215.0f, 45.0f)];
    textLabel0.backgroundColor = [UIColor cyanColor];
    textLabel0.text = @"My Triangle";
    textLabel0.textAlignment = UITextAlignmentCenter;
    textLabel0.textColor = [UIColor blackColor];
    [self.view addSubview:textLabel0];  
    
    
    
    //Square Shape
    textLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 60.0f, 215.0f, 45.0f)];
    textLabel1.backgroundColor = [UIColor orangeColor];
    textLabel1.text = @"My Square";
    textLabel1.textAlignment = UITextAlignmentCenter;
    textLabel1.textColor = [UIColor blackColor];
    [self.view addSubview:textLabel1];
    
    
    
    //Rectangle Shape
    textLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 100.0f, 215.0f, 45.0f)];
    textLabel2.backgroundColor = [UIColor purpleColor];
    textLabel2.text = @"My Rectangle";
    textLabel2.textAlignment = UITextAlignmentCenter;
    textLabel2.textColor = [UIColor blackColor];
    [self.view addSubview:textLabel2];  
    
        
    //TRIANGLE SHAPE
    ShapeFactory *shape1 = [[ShapeFactory alloc] init];
    if (shape1 != nil)
    {
        TriangleClass *myShape1 = (TriangleClass*)[shape1 GetShape:SHAPETYPE_TRIANGLE];
        [myShape1 setBase:4];
        [myShape1 setHeight:6];
        [myShape1 GetNumSides];
        textLabel0.text = [NSString stringWithFormat:@"%@ Area: %d", [myShape1 GetName], [myShape1 GetArea]];
    }
    
    //SQUARE SHAPE
    ShapeFactory *shape2 = [[ShapeFactory alloc] init];
    if (shape2 != nil)
    {
        SquareClass *myShape2 = (SquareClass*)[shape2 GetShape:SHAPETYPE_SQUARE];
        [myShape2 setBase:5];
        [myShape2 setHeight:5];
        [myShape2 GetNumSides];
        textLabel1.text = [NSString stringWithFormat:@"%@ Area: %d", [myShape2 GetName], [myShape2 GetArea]];
    }
    
    //RECTANGLE SHAPE
    ShapeFactory *shape3 = [[ShapeFactory alloc] init];
    if (shape3 != nil)
    {
        RectangleClass *myShape3 = (RectangleClass*)[shape3 GetShape:SHAPETYPE_RECTANGLE];
        [myShape3 setBase:3];
        [myShape3 setHeight:5];
        [myShape3 GetNumSides];
        textLabel2.text = [NSString stringWithFormat:@"%@ Area: %d", [myShape3 GetName], [myShape3 GetArea]];
    }

    
    //Author Info
    textLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(30.0f, 250.0f, 200.0f, 260.0f)];
    textLabel3.backgroundColor = [UIColor grayColor];
    textLabel3.text = @"Meisha Ray: AOC2 : 1206";
    textLabel3.textAlignment = UITextAlignmentCenter;
    textLabel3.textColor = [UIColor blackColor];
    [self.view addSubview:textLabel3];  
   
    
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
