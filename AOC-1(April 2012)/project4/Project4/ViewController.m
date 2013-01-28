//
//  ViewController.m
//  Project4
//
//  Created by Meisha Ray on 4/20/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BUTTON 0
#define INFO_BUTTON 1
#define DATE_BUTTON 2


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor purpleColor];
    //:::::::::::::::::::::::USERNAME TEXT (LOGIN)::::::::::::::::::::::::::::::::::::
    name = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 30.0f)];
    if (name != nil)
    {
        name.text = @"Username:";
        name.backgroundColor = [UIColor purpleColor];
        name.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:name];
    //::::::::::::::::::::::::::::TEXT FIELD (LOGIN):::::::::::::::::::::::::::::::::
    nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 200.0f, 30.0f)];
    if (nameTextField != nil)
    {
        nameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:nameTextField];
    }
    //::::::::::::::::::::LOGIN BUTTON::::::::::::::::::::::::::::::
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.tag = LOGIN_BUTTON;
        loginButton.frame = CGRectMake(220.0f, 50.0f, 80.0f, 30.0f);
        loginButton.tintColor = [UIColor orangeColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        //::::::::::::::::5. MY TARGET (LOGIN)::::::::::::::::
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    //::::::::::::::::::::::LABEL BELOW WITH TEXT::::::::::::::::::::::::
    nameEnter = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
    if (nameEnter != nil)
    {
        nameEnter.text = @"Please Enter Username";
        nameEnter.backgroundColor = [UIColor cyanColor];
        nameEnter.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:nameEnter];
    
    //::::::::::::::::::::::::::SHOW DATE BUTTON::::::::::::::::::::::::::::::::::::::
    UIButton *showDateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDateButton != nil)
    {
        showDateButton.tag = DATE_BUTTON;
        showDateButton.frame = CGRectMake(10.0f, 230.0f, 110.0f, 30.0f);
        showDateButton.tintColor = [UIColor orangeColor];
        [showDateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        
        //::::::::::::::::MY TARGET::::::::::::::::
        [showDateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDateButton];
    }
   //:::::::::::::::::DATE::::::::::::::::::::::::::::::::: 
    dateTime = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 260.0f, 300.0f, 30.0f)];
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter !=nil)
    {
        [dateFormatter setDateFormat:@"MMMM d, yyyy h:mm:s:a zzzz"];
        dateTime.text = [dateFormatter stringFromDate:date];
    }
                                                     
    //:::::::::::::::::::::INFO BUTTON:::::::::::::::::
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.tag = INFO_BUTTON;
        infoButton.frame = CGRectMake(10.0f, 300.0f, 20.0f, 20.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    info = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 320.0f, 280.0f, 40.0f)];
    if (info != nil)
    {
        info.textColor = [UIColor greenColor];
        info.backgroundColor = [UIColor purpleColor];
        info.textAlignment = UITextAlignmentLeft;
        info.numberOfLines = 2;
    }
    [self.view addSubview:info];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//::::::::::::::::::UIALERT VIEW FOR THE DATE:::::::::::::::::::::::::::
-(void)displayAlertWithString:(NSString*) string andTitle:(NSString*) title{
    UIAlertView *alert = [[UIAlertView alloc] 
                          initWithTitle:title 
                          message:string 
                          delegate:self 
                          cancelButtonTitle:@"OK" 
                          otherButtonTitles:nil];
    [alert show];
}

//:::::::::::::::::::onClick METHOD:::::::::::::::
-(void)onClick:(UIButton*)button
{
    if(button.tag == 0 && nameTextField.text == nil)
    {
        nameEnter.text = @"Username cannot be empty";
        nameEnter.textColor = [UIColor redColor];
    }else if (button.tag == 0)
    {
        NSString *userInput = [[NSString alloc] initWithString:nameTextField.text];
        nameEnter.text = [NSString stringWithFormat:@"User: '%@' is logged in", userInput];
    }else if(button.tag == 1)
    {
        info.text = @"This application was created by Meisha Ray"; 
        info.textColor = [UIColor greenColor];
    }else if(button.tag == 2)
    {
        [self displayAlertWithString:dateTime.text andTitle:@"Date"];
    }
}

//:::::::::::::::::::::::KEYBOARD VANISHING::::::::::::::::::::::::::::::::::::
//-(BOOL)textFieldShouldReturn:(UITextField*)nameTextField
//{
//    [nameTextField resignFirstResponder];
//    return YES;
//}
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
