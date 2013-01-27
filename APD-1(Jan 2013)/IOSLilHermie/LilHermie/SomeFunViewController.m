//
//  SomeFunViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/21/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "SomeFunViewController.h"

@interface SomeFunViewController ()

@end

@implementation SomeFunViewController
{
    MPMoviePlayerController *mpc;
}

@synthesize imageView;
@synthesize scrollView;
//*********SWIPE*********
int imageIndex = 4;

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
    //**************SCROLL VIEW*************
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 650)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//::::::::::::::CHANGE BG COLOR ACTION:::::::::::::
-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil)
    {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        
        bgLabel.text = [NSString stringWithFormat:@"Change Background Color", selectedIndex];
        if (selectedIndex == BLUE)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedIndex == PURPLE)
        {
            self.view.backgroundColor = [UIColor purpleColor];
        }
        else if (selectedIndex == GREEN)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
}
//*************PLAY MOVIE**************
- (IBAction)playButton:(id)sender {
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"hermievid01" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    mpc = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [[self view] addSubview:mpc.view];
    [mpc setFullscreen:YES];
    
    [mpc play];
}

//*******************SWIPE METHOD******************
- (IBAction)handleSwipe:(UIGestureRecognizer *)sender {
    {
        
        NSArray *images=[[NSArray alloc] initWithObjects:
                         @"tank@2x.jpg",
                         @"shells@2x.jpg",
                         @"hermit-crab-feeding@2x.jpg",
                         @"compress-coconut@2x.jpg",
                         @"hermit-crab-sand@2x.jpg",
                         nil];
        
        UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
        
        switch (direction) {
            case UISwipeGestureRecognizerDirectionLeft:
                imageIndex++;
                break;
            case UISwipeGestureRecognizerDirectionRight:
                imageIndex--;
                break;
            default:
                break;
        }
        imageIndex = (imageIndex < 0) ? ([images count] -1):
        imageIndex % [images count];
        imageView.image = [UIImage imageNamed:[images objectAtIndex:imageIndex]];
        //NSLog( @"swiped");
    }

}

@end
