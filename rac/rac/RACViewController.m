//
//  RACViewController.m
//  rac
//
//  Created by msjf on 2017/7/5.
//  Copyright © 2017年 common. All rights reserved.
//

#import "RACViewController.h"
#import <ReactiveCocoa.h>

@interface RACViewController ()
@property (nonatomic) UITextField *tf;
@property (nonatomic) NSString *name;
@end

@implementation RACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    //监听文本框
    _tf = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
    _tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_tf];
    //shoshi
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, 300, 40)];
    label.backgroundColor = [UIColor lightGrayColor];
    label.text = @"tap";
    label.userInteractionEnabled = YES;
    [self.view addSubview:label];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(aa) userInfo:nil repeats:YES];
    [RACObserve(self, name) subscribeNext:^(id x) {
        NSLog(@"%@",x);
    }];
    RAC(label,text) = _tf.rac_textSignal;
    RAC(self,name) = _tf.rac_textSignal;
    NSLog(@"%@",_name);
}
- (void)aa {
    self.name = [NSString stringWithFormat:@"%@%@",_name,@"xi"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
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
