//
//  ViewController.m
//  Project1
//
//  Created by Meisha Ray on 6/25/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "DetailViewControllerViewController.h"


@interface ViewController ()
@property (strong, nonatomic) DetailViewControllerViewController *childController;

@end

@implementation ViewController
NSMutableArray *dataList;
@synthesize childController;

- (void)viewDidLoad
{
    self.navigationItem.title = @"Hot Rod List";
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
                nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    dataList = nil;
    //childController = nil;
    
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
       cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}
//::::::::::::METHOD TO FIGURE OUT HOW MANY ROWS THERE ARE::::::::::::::
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //::::::THIS WILL AUTOMATICALLY PICK UP WHATEVER ITEMS I ADD TO MY ARRAY:::::::
    return [dataList count];
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
//::::::::NEXT VIEW:::::::: NOT ON THE RUBRIC SO WILL PUT INTO NEXTWEEKS ASSIGNMENT IF NEEDED:::::::::::::::
//-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
//{
//    if(childController == nil)
//    {
//        childController = [[DetailViewControllerViewController alloc] initWithNibName:@"DetailViewControllerViewController" bundle:nil];
//    }
//    childController.title = @"Hot Rod Information";
//    NSUInteger row = [indexPath row];
//    NSString *hotrod = [dataList objectAtIndex:row];
//    NSString *make = [[NSString alloc] initWithFormat:@"Hot Rod %@", hotrod];
//    childController.details = make;
//    childController.models = hotrod;
//    [self.navigationController pushViewController:childController animated:YES];
//}
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
