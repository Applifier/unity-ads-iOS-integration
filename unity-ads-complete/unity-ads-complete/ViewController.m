//
//  ViewController.m
//  unity-ads-complete
//
//  Created by Fritz Huie on 3/2/16.
//  Copyright © 2016 Unity. All rights reserved.
//

#import "ViewController.h"
#import <UnityAds/UnityAds.h>

@interface ViewController () <UnityAdsDelegate>
@property (weak, nonatomic) IBOutlet UIButton *videoButton;
@property (weak, nonatomic) IBOutlet UIButton *rewardedButton;
@property (weak, nonatomic) IBOutlet UILabel *loadingLabel;

@end

@implementation ViewController {
    NSString* placement;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _videoButton.hidden = true;
    _rewardedButton.hidden = true;
    
    [[UnityAds sharedInstance] setDelegate:self];
}

- (IBAction)showAd:(id)sender {
    if ([[UnityAds sharedInstance]canShow] && [[UnityAds sharedInstance] setZone:@"video"]) {
        [[UnityAds sharedInstance] show];
    }
}

- (IBAction)showRewardedAd:(id)sender {
    if ([[UnityAds sharedInstance]canShow] && [[UnityAds sharedInstance] setZone:@"rewardedVideo"]) {
        [[UnityAds sharedInstance] show];
    }
}

//--- Required callback ---
- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
    NSLog(@"Video ended: %@", skipped ? @"skipped" : @"completed");
    if (!skipped) {
        //Add code here to reward player for watching an ad
    }
}

- (void)unityAdsFetchCompleted {
    _loadingLabel.hidden = true;
    _videoButton.hidden = false;
    _rewardedButton.hidden = false;
}
@end