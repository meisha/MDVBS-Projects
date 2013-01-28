//
//  ViewController.m
//  Project2.1
//
//  Created by Meisha Ray on 6/29/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "CustomTableCell.h"
#import "DetailsViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSMutableArray *dataList;

- (void)viewDidLoad
{
    self.navigationItem.title = @"VROOM"; 
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dataList = [[NSMutableArray alloc] initWithObjects:
                @"Camaro",
                @"Nova",
                @"Chevelle",
                @"Impala",
                @"Corvette",
                @"Trans-Am",
                @"Torino",
                @"Mustang",
                @"Falcon",
                @"Fairlane",
                @"Road Runner",
                @"Barracuda",
                @"Daytona",
                @"Charger",
                @"Challenger"
                @"Dart",
                @"442",
                @"Galaxie 500",
                @"Comet",
                @"GTO",
                @"Buick GSX Skylark",
                @"AMC Javelin",
                nil];}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    dataList = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
#pragma mark -
#pragma mark Table View Data Source Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath //::::INSERTS AN INDIVIDUAL ROW INTO THE TABLE VIEW::::
{
    static NSString *CellIdentifier = @"Cell";
    
    static BOOL nibsRegistered = NO;
    if(!nibsRegistered)
    {
        UINib *nib = [UINib nibWithNibName:@"CustomTableCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellIdentifier];
    }
    //::::TRIES TO GET A RESUABLE CELL::::
    CustomTableCell *cell = [modelTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSUInteger row = [indexPath row];
    NSString *hotrod = [dataList objectAtIndex:indexPath.row];
    cell.model = [dataList objectAtIndex:row];
    cell.make = [NSString stringWithFormat:@"Hot Rod %@", hotrod];
    
    //:::BUTTONS:::::
    //::::ADDS THE BUTTON TO MOVE TO A NEW VIEW FOR EACH CELL::::
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}
//::::::::::::METHOD TO FIGURE OUT HOW MANY ROWS THERE ARE::::::::::::::
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //::::::THIS WILL AUTOMATICALLY PICK UP WHATEVER ITEMS I ADD TO MY ARRAY:::::::
    return [dataList count];
}
//:::::BUTTON CLICK TO DETAIL VIEW::::::::
-(IBAction)onClick:(id)sender
{
    DetailsViewController *detailView = [[DetailsViewController alloc] initWithNibName:@"DetailsViewController" bundle:nil];
    if(detailView != nil)
    {
        //:::::MOVES TO THE DETAIL VIEW:::::
        [self.navigationController pushViewController:detailView animated:TRUE];
    }
}
//::::::::EDIT/DELETE CELLS::::::::::::
-(IBAction)editList:(id)sender
{
    if (modelTableView.editing == NO)
    {
        [modelTableView setEditing: YES];
    }
    else
        [modelTableView setEditing:NO];
}

-(void)tableView:(UITableView*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"You are deleting row=%d", indexPath.row);
        [dataList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //::::SHOWS IT IS SELECTING THE CORRECT ROW IN THE CONSOLE LOG:::::
    NSLog(@"row=%d carModels=%@", indexPath.row, [dataList objectAtIndex:indexPath.row]);
}
//:::::HEADER::::
-(NSString *)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Hot Rod List";
}
//::::FOOTER::::
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"created by Meisha Ray : MDF1";
}
@end
