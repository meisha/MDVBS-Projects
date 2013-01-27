//
//  DetailViewController.h
//  LilHermie
//
//  Created by S. Meisha Ray on 1/4/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;

}

@property (nonatomic, strong) IBOutlet UILabel *careLabel;//Name of that view
@property (nonatomic, strong) NSString *careName;

@property (nonatomic, strong) IBOutlet UIImageView *myImageView; //Image View
@property (nonatomic, strong) IBOutlet UITextView *myTextView; //Description View

@end
