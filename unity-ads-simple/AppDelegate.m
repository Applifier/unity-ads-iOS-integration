//
//  AppDelegate.m
//  unity-ads-simple
//
//  Created by Fritz Huie on 3/1/16.
//  Copyright © 2016 - All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIViewController* vc = self.window.rootViewController;
    
    //initialize Unity Ads
    [[UnityAds sharedInstance] startWithGameId:@"1002292" andViewController:vc];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
