//
//  AppDelegate.m
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController2.h"

@implementation AppDelegate

@synthesize window = window_;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    // windowを自分で作成
    CGRect bounds = [[UIScreen mainScreen] bounds];
    window_ = [[UIWindow alloc] initWithFrame:bounds];
    
    // 基点となるControllerを作成
    rootController_ = [[UITabBarController alloc] init];
    
    // ViewController1とViewController2を作成する
    ViewController* tab1 = [[[ViewController alloc] init] autorelease];
    ViewController2* tab2 = [[[ViewController2 alloc] init] autorelease];
    
    // 作ったViewControllerをControllerにまとめて追加
    NSArray* controllers = [NSArray arrayWithObjects:tab1, tab2, nil];
    [(UITabBarController*)rootController_ setViewControllers:controllers animated:NO];
    
    // windowにControllerのviewを追加
    [window_ addSubview:rootController_.view];
    
    [window_ makeKeyAndVisible];
}

- (void)dealloc {
    [rootController_ release];
    [window_ release];
    [super dealloc];
}

@end
