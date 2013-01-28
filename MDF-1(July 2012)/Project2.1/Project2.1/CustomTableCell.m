//
//  CustomTableCell.m
//  Project2.1
//
//  Created by Meisha Ray on 7/1/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "CustomTableCell.h"
#import "ViewController.h"

@implementation CustomTableCell
@synthesize model;
@synthesize make;
@synthesize modelLabel;
@synthesize makeLabel;


-(void)setModel:(NSString *)mod
{
    if(![mod isEqualToString:model])
    {
        model = [mod copy];
        modelLabel.text = model;
    }
}
-(void)setMake:(NSString *)mak
{
    if(![mak isEqualToString:make])
    {
        make = [mak copy];
        makeLabel.text = make;
    }
}



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
