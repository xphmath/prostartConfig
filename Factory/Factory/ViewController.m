//
//  ViewController.m
//  Factory
//
//  Created by msjf on 2017/6/23.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "MSFactory.h"
#import "UIView+CornerRaids.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//     [MSFactory labelWithFrame:CGRectMake(10, 100, 200, 80) numberOflines:0 text:@"测试文本" font:[UIFont systemFontOfSize:12] textColor:[UIColor redColor] superView:self.view];
//   
//    [MSFactory buttonWithFrame:CGRectMake(0, 0, 100, 80) image:[UIImage imageNamed:@"1"] superView:self.view];
//    
//    [MSFactory buttonWithFrame:CGRectMake(200, 300, 100, 100) title:@"button" titleColor:[UIColor greenColor] titleFont:[UIFont systemFontOfSize:30] superView:self.view];
    
   UITextField *t = [MSFactory textFiledWithFrame:CGRectMake(10, 100, 150, 40) placeholder:@"password" defaultPlaceholder:NO textColor:[UIColor redColor] font:[UIFont systemFontOfSize:16] secureTextEntry:YES leftImage:[UIImage imageNamed:@"2"] keyBoard:UIKeyboardTypeASCIICapable clearButton:UITextFieldViewModeAlways superView:self.view];
    [t borber];
    t.backgroundColor = [UIColor grayColor];
//    [MSFactory textFiledWithFrame:CGRectMake(20, 10, 200, 80) placeholder:@"place" textColor:[UIColor redColor] font:[UIFont systemFontOfSize:15] secureTextEntry:YES superView:self.view];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
