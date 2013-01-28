//
//  ViewController.h
//  Project2.1
//
//  Created by Meisha Ray on 6/29/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *modelTableView;
    NSMutableArray *dataList;
}

-(IBAction)editList:(id)sender;
-(IBAction)onClick:(id)sender; //::::BUTTON CLICKS TO DETAIL VIEW::::

@end
