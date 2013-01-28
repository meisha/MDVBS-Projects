//
//  ViewController.m
//  project2
//
//  Created by Meisha Ray on 3/30/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = [UIColor purpleColor];//BACKGROUND
    //BOOK TITLE LABEL 1 (WORKS)
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 40.0f)];
    if(bookTitle != nil)
    {
        bookTitle.backgroundColor = [UIColor greenColor];
        bookTitle.textColor = [UIColor blueColor];
        bookTitle.text = @"Portrait of a Killer: Jack the Ripper Case Closed";
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.numberOfLines = 2;
    }
    [self.view addSubview: bookTitle];
    
    //AUTHOR LABEL 2 (WORKS)
    author = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 55.0f, 100.0f, 20.0f)];
    [super viewWillAppear:animated];

    author.backgroundColor = [UIColor magentaColor];
    author.textColor = [UIColor whiteColor];
    author.text = @"Author:";
    author.textAlignment = UITextAlignmentRight;
    [super viewDidAppear:animated];
    
    [self.view addSubview: author];
    
    //AUTHORS NAME LABEL 3 (WORKS)
    authorName = [[UILabel alloc] initWithFrame: CGRectMake(120.0f, 55.0f, 175.0f, 20.0f)];
    [super viewWillAppear:animated];
    
    authorName.backgroundColor = [UIColor blueColor];
    authorName.textColor = [UIColor orangeColor];
    authorName.text= @"Patricia Cornwell";
    authorName.textAlignment = UITextAlignmentLeft;
    [super viewDidAppear:animated];
    [self.view addSubview: authorName];
    
    //PUBLISHED LABEL 4 (WORKS)
    published = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 80.0f, 100.0f, 20.0f)];
    [super viewWillAppear:animated];

    published.backgroundColor = [UIColor cyanColor];
    published.textColor = [UIColor blackColor];
    published.text= @"Published:";
    published.textAlignment = UITextAlignmentRight;
    [super viewDidAppear:animated];
    [self.view addSubview: published];
    
    //PUBLISHED DATE LABEL 5 (WORKS)
    pubDate = [[UILabel alloc] initWithFrame: CGRectMake(120.0f, 80.0f, 175.0f, 20.0f)];
    [super viewWillAppear:animated];

    pubDate.backgroundColor = [UIColor whiteColor];
    pubDate.textColor = [UIColor blueColor];
    pubDate.text= @"2002";
    pubDate.textAlignment = UITextAlignmentLeft;
    [super viewDidAppear:animated];
    [self.view addSubview: pubDate];
    
    //SUMMARY LABEL 6 (WORKS)
    summary = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 110.0f, 80.0f, 20.0f)];
    [super viewWillAppear:animated];

    summary.backgroundColor = [UIColor blueColor];
    summary.textColor = [UIColor greenColor];
    summary.text= @"Summary:";
    summary.textAlignment = UITextAlignmentLeft;
    [super viewDidAppear:animated];
    [self.view addSubview: summary];
    
    //STORY SUMMARY LABEL 7 (WORKS)
    bookSummary = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 130.0f, 300.0f, 110.0f)];
    [super viewWillAppear:animated];
    
    bookSummary.backgroundColor = [UIColor yellowColor];
    bookSummary.textColor = [UIColor darkGrayColor];
    bookSummary.text= @"Portrait of a Killer: Jack the Ripper Case Closed is a true crime story about the crimes that Jack the Ripper A.K.A. Walter Sickerette, commited in England and throughout Europe in the 1800's.";
    bookSummary.textAlignment = UITextAlignmentLeft;
    bookSummary.numberOfLines = 7;
    [super viewDidAppear:animated];
    [self.view addSubview: bookSummary];
   
    //LIST OF ITEMS LABEL 8 (WORKS)
    list = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 245.0f, 100.0f, 20.0f)];
    [super viewWillAppear:animated];
    
    list.backgroundColor = [UIColor orangeColor];
    list.textColor = [UIColor blackColor];
    list.text= @"List of Items:";
    list.textAlignment = UITextAlignmentLeft;
    [super viewDidAppear:animated];
    [self.view addSubview: list];
    
   //COMPLETE LIST OF ITEMS LABEL 9 (WORKS)
    items = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 270.0, 300.0f, 60.0f)];
    NSArray *listArray = [[NSArray alloc] initWithObjects: @"Jack the Ripper", @"killer", @"murder", @"unsolved", @"police", @"London", @"White Chapel", @"England",  @"Walter Sickerette", nil];
    NSMutableArray *myArray = [[NSMutableArray alloc] initWithArray:listArray];
    if(items !=nil){
    items.text = [NSString stringWithFormat:@"%@, %@, %@, %@, %@, %@, %@, and %@", [myArray objectAtIndex:0]];
    items.backgroundColor = [UIColor greenColor];
    items.textColor = [UIColor redColor];    
    items.textAlignment = UITextAlignmentCenter;
    items.numberOfLines = 3;
}
    [super viewWillAppear:animated];
    [self.view addSubview: items];
    
    //CREATED BY LABEL 10 (WORKS)
    created = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 380.0f, 90.0f, 20.0f)];
    [super viewWillAppear:animated];
    
    created.backgroundColor = [UIColor yellowColor];
    created.textColor = [UIColor redColor];
    created.text= @"Created by:";
    created.textAlignment = UITextAlignmentLeft;
    [super viewDidAppear:animated];
    [self.view addSubview: created];
    
    //CREATED BY LABEL 11 (WORKS)
    myName = [[UILabel alloc] initWithFrame: CGRectMake(110.0f,380.0f, 90.0f, 20.0f)];
    [super viewWillAppear:animated];
    
    myName.backgroundColor = [UIColor blackColor];
    myName.textColor = [UIColor whiteColor];
    myName.text= @"Meisha Ray";
    myName.textAlignment = UITextAlignmentRight;
    [super viewDidAppear:animated];
    [self.view addSubview: myName];
    
    //DATE LABEL 12 (WORKS)
    date = [[UILabel alloc] initWithFrame: CGRectMake(200.0f,380.0f, 90.0f, 20.0f)];
    [super viewWillAppear:animated];
    
    date.backgroundColor = [UIColor blackColor];
    date.textColor = [UIColor whiteColor];
    date.text= @"04/02/12";
    date.textAlignment = UITextAlignmentRight;
    [super viewDidAppear:animated];
    [self.view addSubview: date];

}
        
   

//CODE ALREADY INCLUDED IN FILE
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
