//
//  ViewController.h
//  LilHermie
//
//  Created by S. Meisha Ray on 1/4/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *myTableView;
//@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
