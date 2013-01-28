//
//  ViewController.h
//  Project1
//
//  Created by Meisha Ray on 6/25/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableCell.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *modelTableView;
    NSMutableArray *dataList;
}
-(IBAction)editList:(id)sender;

@end
