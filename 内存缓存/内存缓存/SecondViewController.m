//
//  SecondViewController.m
//  内存缓存
//
//  Created by msjf on 2017/6/26.
//  Copyright © 2017年 common. All rights reserved.
//

#import "SecondViewController.h"
#import "MSCache.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    MSCache *c = [MSCache sharedInstance];
    
    NSString *s = [c objectForKey:@"a"];
    NSLog(@"%@",s);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
