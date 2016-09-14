//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"


@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
//    UIViewController *LHWViewController = [[UIViewController alloc]init];
    
    UINavigationController *navController = [[UINavigationController alloc]init];

    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor colorWithRed:0.94 green:0.94 blue:1.00 alpha:1.00];
    
 
    
    
    City *city1 = [[City alloc]initWithName:@"Vancouver" temperature:25 image:[UIImage imageNamed:@"vancouver.png"]];
                   City *city2 = [[City alloc]initWithName:@"Praia" temperature:32 image:[UIImage imageNamed: @"capeverde.png"]];
    City *city3 = [[City alloc]initWithName:@"Boquete" temperature:33 image:[UIImage imageNamed:@"boquete.png"]];
    City *city4 = [[City alloc]initWithName:@"Lisbon" temperature:28 image:[UIImage imageNamed:@"lisbon.png"]];
    City *city5 = [[City alloc]initWithName:@"CapeTown" temperature:22 image:[UIImage imageNamed: @"capetown.png"]];
    
    UIColor * silverTree = [UIColor colorWithRed:0.39 green:0.73 blue:0.56 alpha:1.00];
    UIColor * melrose = [UIColor colorWithRed:0.76 green:0.69 blue:0.94 alpha:1.00];
    UIColor * marvelous = [UIColor colorWithRed:0.91 green:0.60 blue:0.65 alpha:1.00];
    UIColor * jaffa = [UIColor colorWithRed:0.88 green:0.50 blue:0.26 alpha:1.00];
    UIColor * sundown = [UIColor colorWithRed:0.98 green:0.71 blue:0.70 alpha:1.00];
    
    CityViewController *cityVC1 = [[CityViewController alloc]initWithCity:city1 andBackgroundColor: silverTree];
    CityViewController *cityVC2 = [[CityViewController alloc]initWithCity:city2 andBackgroundColor:melrose];
    CityViewController *cityVC3 = [[CityViewController alloc]initWithCity:city3 andBackgroundColor:marvelous];
    CityViewController *cityVC4 = [[CityViewController alloc]initWithCity:city4 andBackgroundColor:jaffa];
    CityViewController *cityVC5 = [[CityViewController alloc]initWithCity:city5 andBackgroundColor:sundown];
    
 
    
    UINavigationController *navController1 = [[UINavigationController alloc]initWithRootViewController:cityVC1];
    UINavigationController *navController2 = [[UINavigationController alloc]initWithRootViewController:cityVC2];
    UINavigationController *navController3 = [[UINavigationController alloc]initWithRootViewController:cityVC3];
    UINavigationController *navController4 = [[UINavigationController alloc]initWithRootViewController:cityVC4];
    UINavigationController *navController5 = [[UINavigationController alloc]initWithRootViewController:cityVC5];
    
    
    navController1.tabBarItem = [[UITabBarItem alloc] initWithTitle:city1.name image:[UIImage imageNamed:@"default.png"] tag: 0];
    navController2.tabBarItem = [[UITabBarItem alloc] initWithTitle:city2.name image:[UIImage imageNamed:@"default.png"] tag: 0];
    navController3.tabBarItem = [[UITabBarItem alloc] initWithTitle:city3.name image:[UIImage imageNamed:@"default.png"] tag: 0];
    navController4.tabBarItem = [[UITabBarItem alloc] initWithTitle:city4.name image:[UIImage imageNamed:@"default.png"] tag: 0];
    navController5.tabBarItem = [[UITabBarItem alloc] initWithTitle:city5.name image:[UIImage imageNamed:@"default.png"] tag: 0];
    
    tabBarController.viewControllers = @[
                                         navController1,
                                         navController2,
                                         navController3,
                                         navController4,
                                         navController5,
                                         ];

    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
