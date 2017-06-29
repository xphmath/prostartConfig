//
//  MSTabBarViewController.m
//  TabBar
//
//  Created by msjf on 2017/6/22.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSTabBarViewController.h"
#import "MSTabBarModel.h"
@interface MSTabBarViewController ()

@end

@implementation MSTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MSTabBarModel *m1 = [[MSTabBarModel alloc] initWithViewControllerName:@"FirstViewController" itemName:@"11" normalImage:@"" selectedImage:@""];
    UIViewController *v1 = [m1 createVC];
    
    MSTabBarModel *m2 = [[MSTabBarModel alloc] initWithViewControllerName:@"SecondViewController" itemName:@"22" normalImage:@"" selectedImage:@""];
    UIViewController *v2 = [m2 createVC];
    
    MSTabBarModel *m3 = [[MSTabBarModel alloc] initWithViewControllerName:@"ThirdViewController" itemName:@"22" normalImage:@"" selectedImage:@""];
    UIViewController *v3 = [m3 createVC];
    
    MSTabBarModel *m4 = [[MSTabBarModel alloc] initWithViewControllerName:@"FourViewController" itemName:@"22" normalImage:@"" selectedImage:@""];
    UIViewController *v4 = [m4 createVC];
    
    MSTabBarModel *m5 = [[MSTabBarModel alloc] initWithViewControllerName:@"FiveViewController" itemName:@"22" normalImage:@"" selectedImage:@""];
    UIViewController *v5 = [m5 createVC];
    
    self.viewControllers = @[v1,v2,v3,v4,v5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
