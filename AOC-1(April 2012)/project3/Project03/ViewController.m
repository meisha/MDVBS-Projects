//
//  ViewController.m
//  Project03
//
//  Created by Meisha Ray on 4/19/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
- (void)viewWillAppear:(BOOL)animated;    // Called when the view is about to made visible. Default does nothing
{
    
}
- (void)viewDidAppear:(BOOL)animated;     // Called when the view has been fully transitioned onto the screen. Default does nothing
{
    UIAlertView *alertView =[[UIAlertView alloc]
                             initWithTitle:nil
                             message:@"Peek-A-Boo!"
                             delegate:nil
                             cancelButtonTitle:@"OK"
                             otherButtonTitles:nil];
    if (alertView != nil)
    {
        alertView.alertViewStyle = UIAlertViewStyleDefault;
        [alertView show];
    }
    //::::::::::::::::::::::VARIABLES:::::::::::::::::::
    int num1 = 12;
    int num2 = 45;
    NSInteger total = [self addInt1:num1 int2:num2];
    NSNumber *myNum = [NSNumber numberWithInt:total];
    [self displayAlertWithNSNumber:myNum];
    [self compareNumber:num1 compare2:num2];
    [self appendString:@"AOC-1 1204" appendString2:@"Project 3."];
    
    [super viewDidAppear:animated];
}
//::::::::::::::::PART 1: ADDITION::::::::::::::
-(NSInteger)addInt1:(NSInteger)num1 int2:(NSInteger)num2
{
    return (num1 + num2);
}

//::::::::::::::::PART 2: COMPARISONS ALERT::::::::::::::
-(BOOL)compareNumber:(NSInteger)num1 compare2:(NSInteger)num2
{
    BOOL comparisonResult = (num1 == num2);
    NSString *resultofString = [NSString stringWithFormat:@"Are %d and %d the same value? %@", num1, num2, comparisonResult ? @"YES" : @"NO"];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"My Comparison Alert"
                              message:(NSString*)resultofString
                              delegate:nil
                              cancelButtonTitle:@"NEXT"
                              otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
    return comparisonResult;
}
//:::::::::::::::::::Part 3: APPEND METHOD ALERT:::::::::::::::::::::::::
-(NSString*)appendString:(NSString*)appendmyString appendString2:(NSString *)appendString2
{
    NSString *myResult = [[NSString alloc] initWithFormat:@"%@ %@", appendmyString, appendString2];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"My AppendString Alert"
                              message:(NSString*)myResult
                              delegate:nil
                              cancelButtonTitle:@"Proceed!"
                              otherButtonTitles:nil];
    if (alertView !=nil)
    {
        [alertView show];
    }
    return myResult;
}
//::::::::::::::::::::::PART 4: NSString (ADDITION) ALERT:::::::::::::::::::
-(void) displayAlertWithNSNumber:(NSNumber*)myVars
{
    NSInteger mynum = [myVars integerValue];
    NSString *myAddition = [[NSString alloc] initWithFormat:@"The number is: %d", mynum];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"What is 12 + 45?"
                              message:(NSString*)myAddition
                              delegate:nil
                              cancelButtonTitle:@"All Done!"
                              otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
}
//::::::::::::::MutableArray Method:::::::::::::::::::::
-(void)myMutableArray:(NSMutableArray*)myArray
{
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:8];
    if (mutableArray != nil)
    {
        for (int i=0; i<8; i++)
        {
            NSNumber *aNumber = [[NSNumber alloc] initWithInt:i];
            if (aNumber != nil)
            {
                [mutableArray addObject:aNumber];
            }
        }
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Mutable Array?"
                                  message:(NSString*)mutableArray
                                  delegate:nil
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        if (alertView != nil)
        {
            [alertView show];
        }
    }
}- (void)viewWillDisappear:(BOOL)animated; // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
{
    
}
- (void)viewDidDisappear:(BOOL)animated;  // Called after the view was dismissed, covered or otherwise hidden. Default does nothing
{
    
}

@end
