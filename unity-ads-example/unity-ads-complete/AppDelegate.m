//
//  AppDelegate.m
//  unity-ads-complete
//
//  Created by Fritz Huie on 3/2/16.
//  Copyright © 2016 Unity. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIViewController* vc = self.window.rootViewController;
    [[UnityAds sharedInstance] startWithGameId:@"1003843" andViewController:vc];
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
