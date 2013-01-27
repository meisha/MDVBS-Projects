//
//  PhotoViewController.h
//  LilHermie
//
//  Created by S. Meisha Ray on 1/9/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

{
    IBOutlet UIImageView *photoImageView;
    //IBOutlet UIImageView *scaledImageView;
    IBOutlet UIButton *click;
    IBOutlet UIButton *save;
    IBOutlet UIButton *capture;
    //IBOutlet UIButton *vid;
    IBOutlet UIButton *cancel;
    IBOutlet NSString *myVidPath;
}

- (IBAction)onClick:(id)sender;
- (IBAction)onCapture:(id)sender;
//- (IBAction)onVid:(id)sender;
- (IBAction)onSave:(id)sender;
- (IBAction)onCancel:(id)sender;


@end
