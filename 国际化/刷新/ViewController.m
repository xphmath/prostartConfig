//
//  ViewController.m
//  刷新
//
//  Created by msjf on 2017/6/23.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *la = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 100, 50)];
    la.text = NSLocalizedString(@"首页", @"");
    [self.view addSubview:la];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
