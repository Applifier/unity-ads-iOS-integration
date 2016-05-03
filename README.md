This project provides an example for integrating the Unity Ads SDK into a Native iOS app in Objective-C.

# Quickstart guide for Unity Ads - Native iOS

### Create a Game Project on the [Unity Ads Dashboard](https://dashboard.unityads.unity3d.com)

- Log into the [dashboard](https://dashboard.unityads.unity3d.com) using your [UDN Account](https://accounts.unity3d.com/sign-in)
- Create a new game project
- Look for your iOS **Game ID** in the project, a (7-digit) identifier that you will use in your integration

### Import the Unity Ads Framework

Download the Unity SDK from https://github.com/Applifier/unity-ads-sdk
  1. [Download the SDK zip file](https://github.com/Applifier/unity-ads-sdk/archive/master.zip)
  2. Unzip the project, and locate **UnityAds.framework** and **UnityAds.bundle**

Import **UnityAds.framework** and **UnityAds.bundle** into your project
  1. Drag and drop the files into your project's file manager
  2. Select the box next to **"Copy items if needed"**

Make sure the following dependancies are enabled in your project  
  
> **AdSupport**.framework  
> **AVFoundation**.framework  
> **CFNetwork**.framework  
> **CoreFoundation**.framework  
> **CoreMedia**.framework  
> **CoreTelephony**.framework  
> **StoreKit**.framework  
> **SystemConfiguration**.framework  
  
  1. Click your project settings
  2. select **Build Phases** > **Link Binary With Library**
  3. Click the **+** button > select the Framework > Click **Add**

### Initialize Unity Ads

Initialize UnityAds to your **AppDelegate**

1. In **AppDelegate.h**:  
  `#import <UnityAds/UnityAds.h>`

2. In **AppDelegate.m**  
  ```ObjC
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
    UIViewController* vc = self.window.rootViewController;
    [[UnityAds sharedInstance] startWithGameId:@"1002292" andViewController:vc];
  
    return YES;
}
  ```
  The game ID in the example project is **1003843**, you need to replace this number with your own game ID

3. In the root **ViewController.m**
  ```objC
#import "AppDelegate.h"
  ```
4. In the root **ViewController.m**, add the @required callback  
```objc    
- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
   if (!skipped) {
    //Your code goes here...
    //reward the player for watching an ad
  }
}
```

> Note: **rewardItemKey** was deprecated; Use custom zones in the [dashboard](https://dashboard.unityads.unity3d.com) to track reward types

### Show a Video Ad

Finally, in the root View Controller, the following code will play a video ad
```objc
if ([[UnityAds sharedInstance] setZone:@"video"] && [[UnityAds sharedInstance]canShow]) {
  [[UnityAds sharedInstance] show];
}
  ```

> Note: `setZone` will return false if the selected placement is not valid

For more information, check out the [iOS Integration Guide](http://unityads.unity3d.com/help/monetization/integration-guide-ios), the [support Forum](http://forum.unity3d.com/forums/unity-ads.67/), or contact unityads-sales@unity3d.com
