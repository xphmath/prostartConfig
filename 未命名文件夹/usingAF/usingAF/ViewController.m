//
//  ViewController.m
//  usingAF
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "MSServiceManager.h"
@interface ViewController ()

@end
#define baseURL @"http://localhost/xq/1.json"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[MSServiceManager manager].loginService loginWithURL:baseURL para:@{} success:^(id responseObject) {
        NSLog(@"%@",responseObject);
    } Failure:^(NSError *error) {
        
    }];
    
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can   recreated.
}


@end
