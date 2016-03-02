//
//  ViewController.m
//  unity-ads-simple
//
//  Created by Fritz Huie on 3/1/16.
//  Copyright © 2016 - All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UnityAds sharedInstance] setDelegate:self];
}

- (IBAction)showAd:(id)sender {
    [[UnityAds sharedInstance] show];
}

- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
    
}

- (void)updateButton {
    
}

@end
