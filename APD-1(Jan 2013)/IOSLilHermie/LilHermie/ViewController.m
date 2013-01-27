//
//  ViewController.m
//  LilHermie
//
//  Created by S. Meisha Ray on 1/4/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *careList;
    NSArray *thumbs;
    NSArray *searchResults;
    
    
}
//@synthesize thumbnailImageView;

@synthesize myTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
 
    // Find out the path of carelist.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"carelist" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    careList = [dict objectForKey:@"CareList"];
    thumbs = [dict objectForKey:@"Thumbnail"];
    
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"SELF contains[cd] %@",
                                    searchText];
    
    searchResults = [careList filteredArrayUsingPredicate:resultPredicate];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return [careList count];
        
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"CareListCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
    } else {
        cell.textLabel.text = [careList objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[thumbs objectAtIndex:indexPath.row]];
    }
    
    return cell;
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        [self performSegueWithIdentifier: @"showCareDetail" sender: self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showCareDetail"]) {
        DetailViewController *destViewController = segue.destinationViewController;
        
        NSIndexPath *indexPath = nil;
        
        if ([self.searchDisplayController isActive]) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            destViewController.careName = [searchResults objectAtIndex:indexPath.row];
            
        } else {
            indexPath = [self.myTableView indexPathForSelectedRow];
            destViewController.careName = [careList objectAtIndex:indexPath.row];
        }
    }
    
}

@end
