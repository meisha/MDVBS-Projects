//
//  EmailViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/5/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController


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
    //***********************SCROLLVIEW***************************
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 650)];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showEmail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Protect Hermie Info Request";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"info@codergirldesign.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"YAY!"
                                                    message:@"Email Sent"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    
    [alert show];
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}




@end
