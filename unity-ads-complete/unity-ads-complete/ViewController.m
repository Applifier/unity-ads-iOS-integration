//
//  ViewController.m
//  unity-ads-complete
//
//  Created by Fritz Huie on 3/2/16.
//  Copyright © 2016 Unity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSString* placement;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showAd:(id)sender {
    [[UnityAds sharedInstance] setZone:@"video"];
    [[UnityAds sharedInstance] show];
}
- (IBAction)showRewardedAd:(id)sender {
    [[UnityAds sharedInstance] setZone:@"rewardedVideo"];
    [[UnityAds sharedInstance] show];
}

- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
    if (!skipped) {
        //reward player for watching an ad!
    }
}

@end