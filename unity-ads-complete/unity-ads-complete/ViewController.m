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
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController {
    NSString* placement;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //_retryStatusButton.enabled = false;
    [[UnityAds sharedInstance] setDelegate:self];
}

- (IBAction)showAd:(id)sender {
    //show an ad with the "video" placement (5-second skip)
    if ([[UnityAds sharedInstance]canShow] && [[UnityAds sharedInstance] setZone:@"video"]) {
        [[UnityAds sharedInstance] show];
    }
}

- (IBAction)showRewardedAd:(id)sender {
    //show an ad with the "rewardedVideo" placement (unskippable)
    if ([[UnityAds sharedInstance]canShow] && [[UnityAds sharedInstance] setZone:@"rewardedVideo"]) {
        [[UnityAds sharedInstance] show];
    }
}

- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
    NSLog(@"Video ended: %@", skipped ? @"skipped" : @"completed");
    if (!skipped) {
        //Add code here to reward player for watching an ad
    }
}

- (void)unityAdsFetchCompleted {
    _videoButton.hidden = false;
    _rewardedButton.hidden = false;
    _statusLabel.hidden = true;
}


- (void)unityAdsFetchFailed {
    _statusLabel.text = @"Initialization failed (womp womp)";
}

@end