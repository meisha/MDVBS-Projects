//
//  CustomTableCell.h
//  Project1
//
//  Created by Meisha Ray on 6/27/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface CustomTableCell : UITableViewCell
{
    
    IBOutlet UITableViewCell *customCell;
    IBOutlet UILabel *modelLabel;
    IBOutlet UILabel *makeLabel;
}
@property (copy, nonatomic) NSString *model;
@property (copy, nonatomic) NSString *make;

@property (strong, nonatomic) IBOutlet UILabel *modelLabel;
@property (strong, nonatomic) IBOutlet UILabel *makeLabel;

@end
