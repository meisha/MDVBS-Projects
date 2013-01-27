//
//  SomeFunViewController.h
//  LilHermie
//
//  Created by S. Meisha Ray on 1/21/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SomeFunViewController : UIViewController
{
    IBOutlet UILabel *bgLabel;
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

//:::::::::::::::::MY BG COLORS::::::::::::::
typedef enum
{
    BLUE=0,
    PURPLE,
    GREEN
}bgColor;

//*********SLIDER*********************
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)handleSwipe:(UIGestureRecognizer *)sender;


//::::::::::CHANGE COLOR BUTTONS ACTION::::::::::::
-(IBAction)onChange:(id)sender;
- (IBAction)playButton:(id)sender;

@end
