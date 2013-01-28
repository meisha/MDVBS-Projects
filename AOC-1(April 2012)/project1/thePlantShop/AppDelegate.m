//
//  AppDelegate.m
//  thePlantShop
//
//  Created by Meisha Ray on 3/27/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //START OF PROJECT 1 - THE PLANT SHOP
    //MY FIRST INTERGER
    int weather = 74; 
    
    //INTRODUCTION TO MY STORY
    NSLog(@"This is my story for project 1 for AOC-1");
    NSLog(@"Since I'm currently working on setting up my garden, I thought why not write about it as my project for this class.");
    NSLog(@"So, welcome to the Plant Shop.");
    NSLog(@"It's gardening season which makes today plant shopping day. That is, if the weather is a nice warm %d degrees or higher.", weather);
    
    //IF/ELSE IF/ ELSE STATEMENT
    if((weather <= 74) || (weather >= 74))//COMPARISONS
    {
        NSLog(@"Woot! The weather is a nice warm %d degrees, so I am going plant shopping.", weather);
    }
    else if (weather > 74)
    {
        NSLog(@"I will not being shopping today since it is too cool. I guess I'll be spending the day working on my AOC-1 project.");
    }
    else 
    {
        NSLog(@"I will wait until it is a cooler day to shop for plants for my garden and do homework instead.");
    }
    
    
    //STORY CONTINUED... IF I GO SHOPPING...
    NSLog(@"I just arrived at the Plant Shop.");
    NSLog(@"As I search for my favorite plants I think about how much space I will need for my plants to fit into my garden.");
    
    //CASTING FLOAT DATA TYPE
    float mySpace = 2.0;
    int plantCount = 20;
    
    float spaceNeeded = (float) plantCount * mySpace;
    
    int variety = 5;
    int tomato = 5;
    int pepper = 5;
    int watermelon = 5;
    int cucumbers = 5;
    int seeds = 1; 
    int plantCost = 5;
    int cash = 120;
    int seedCost = 5;
    int seedCount = 50;

    
    NSLog(@"I have %d plants that need to go into the ground and each has to be spaced 2 feet apart from one another.", plantCount);
    NSLog(@"I will need %.1f feet of space to plant my %d veggie plants.", spaceNeeded, plantCount);
    NSLog(@"I have a list of 20 plants and %d seed packet that I need to purchase.", seeds);
    NSLog(@"I need to find %d plants, %d of each type from my list.", plantCount, variety);
    NSLog(@"The first plant that I'm going to look for are tomato, then I'll search for the pepper, watermelon, and cucumber plants.");
    NSLog(@"Then lastly I will find my packet of corn seeds.");
        
    //AT THE CHECKOUT
    NSLog(@"I found all of the plants on my list and now I'm at the checkout.");
    NSLog(@"I'm double checking to make sure that I have %d tomato plants, %d pepper plants, %d watermelon plants, %d cucumber plants, and %d packet of sweet corn seeds.", tomato, pepper, watermelon, cucumbers, seeds); 
    NSLog(@"It would seem that I have all %d of my plants and my %d seed packet. Time to checkout and go home.", plantCount, seeds);
    NSLog(@"Each plant cost $%d and the packet of seeds cost $%d. I gave the cashier $%d.", plantCost, seedCost, cash);// N2K: MUST MAKE SURE THOSE INT ARE IN ORDER AT THE END OR IT WILL PRINT OUT THE INFO IN THE WRONG PLACE.
    NSLog(@"The cashier counted my change back to me.");
    //CHANGE GETTING COUNTED BACK
    //FOR LOOP FORWARD
    for(int x=106; x <=120; x++)
    {
        NSLog(@"%d", x);
    }
    NSLog(@"I leave the store and load my plants into my car and drive home.");
    NSLog(@"I arrive home and prepare to put my plants into the ground, the corn seeds are first.");

    //PLANTING THE CORN SEEDS
    NSLog(@"I have %d seeds in my sweet corn packet. I really don't think I need %d corn plants.", seedCount, seedCount);
    NSLog(@"So, I'm going to count the corn seeds as I plant them.");
    //COUNTING THE CORN SEEDS AS I PLANT THEM
    //ANOTHER FOR LOOP - THIS ONE WITH A BREAK. I THOUGHT I'D GIVE IT A WHIRL.
    for(int count=1; count < 50; count++)
    {
        NSLog(@"count=%d", count);
        if(count == 25)
        {
            break;
        }
    }
    NSLog(@"Okay, that gives me a total of 25 corn plants. Now I will plant the rest of the plants in my garden.");
    //COUNTING MY PLANTS TO MAKE SURE I HAVE 20 TOTAL
    //WHILE LOOP
    NSLog(@"I counted my plants before placing them where they should go in the garden ready for planting.");
    int p = 20; //SETUP INDEX
    while (p <= 20)//CHECKS CONDITION
    {
        NSLog(@"I have just the right amount of plants, %d total.", p);
        p++;
    }
    //MY LAST NEEDED REQUIREMENT
    //NESTED LOOP WITH A CONTINUE AND A BREAK...
    NSLog(@"Trying something just to see if it works!");
    NSLog(@"How many plants do I have to plant again?");
    int i;
    for(i = 0; i < 20; i++)
    {
        if(i % 20 == 0) {
            continue;
        }
        NSLog(@"Hmmmm... I think...");
        if(i + 5 == i * i) {
            break;
        }
    }
    NSLog(@"Yep! I have to plant %d veggie plants.", i);
    return 0;

    
    
    
    
    
    //CODE BELOW ALREADY INCLUDED IN AppDelegate.m FILE
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
