//
//  AppDelegate.m
//  enterBack
//
//  Created by msjf on 2017/6/21.
//  Copyright © 2017年 common. All rights reserved.
//

#import "AppDelegate.h"
#import <BmobSDK/Bmob.h>
@interface AppDelegate ()
@property (nonatomic) UIImageView *v;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob registerWithAppKey:@"0521ae345d5aedb0b37b8012f7fbe67a"];
   
    _v = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _v.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.5];
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectView.frame = [UIScreen mainScreen].bounds;
    [_v addSubview:effectView];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    UIView *ss =  [[[UIApplication sharedApplication].keyWindow subviews] lastObject];
    UIGraphicsBeginImageContextWithOptions(ss.bounds.size, YES, 0);
    
    [ss drawViewHierarchyInRect:ss.bounds afterScreenUpdates:YES];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    _v.image = image;
    [[UIApplication sharedApplication].keyWindow addSubview:_v];
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
 
    [_v removeFromSuperview];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
