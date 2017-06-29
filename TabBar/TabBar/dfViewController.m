//
//  dfViewController.m
//  TabBar
//
//  Created by msjf on 2017/6/22.
//  Copyright © 2017年 common. All rights reserved.
//

#import "dfViewController.h"
#import "MSTabBarViewController.h"
#import "AppDelegate.h"
@interface dfViewController ()
@property (nonatomic)UITextField *tf;
@end

@implementation dfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
   _tf = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 80)];
    _tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_tf];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_da replaceObjectAtIndex:_r withObject:_tf.text];
    [self dismissViewControllerAnimated:YES completion:^{
    
    }];

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
