//
//  CustomTableCell.h
//  Project2.1
//
//  Created by Meisha Ray on 7/1/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "DetailsViewController.h"
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
