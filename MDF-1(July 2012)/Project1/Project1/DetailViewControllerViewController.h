//
//  DetailViewControllerViewController.h
//  Project1
//
//  Created by Meisha Ray on 6/28/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewControllerViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UILabel *modelLabel;
@property (copy, nonatomic) NSString *details;
@property (copy, nonatomic) NSString *models;

-(IBAction)onClose:(id)sender;

@property (strong)id<UITableViewDelegate> delegate;
@end
