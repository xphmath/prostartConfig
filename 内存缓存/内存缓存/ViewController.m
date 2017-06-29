//
//  ViewController.m
//  内存缓存
//
//  Created by msjf on 2017/6/26.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "MSCache.h"
@interface ViewController ()
@property (nonatomic) MSCache *c ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *test = @"a test";
    _c = [MSCache sharedInstance];
    [_c setObject:test forKey:@"a"];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    FirstViewController *f = [FirstViewController new];
    [self presentViewController:f animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
