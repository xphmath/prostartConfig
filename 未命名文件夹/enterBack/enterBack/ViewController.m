//
//  ViewController.m
//  enterBack
//
//  Created by msjf on 2017/6/21.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *la = [UILabel new];
    la.frame = CGRectMake(0, 0, 100, 100);
    la.numberOfLines = 0;
    la.text = @"但并不是所有的iOS11系统都可以使用，而是必须要是处理器A9及以上才能够使用，苹果从iPhone6s开始使用A9处理器，也就是iPhone6及以前的机型无法使用";
    UIView *v = [UIView new];
    v.frame = CGRectMake(self.view.bounds.size.width / 2 - 50, 0, 100, 200);
    v.backgroundColor = [UIColor magentaColor];
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, self.view.bounds.size.height - 200)];
    iv.contentMode = UIViewContentModeScaleAspectFit;
    iv.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:iv];
    [self.view addSubview:v];
    [self.view addSubview:la];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TestViewController *tvc = [TestViewController new];
    [self presentViewController:tvc animated:NO completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
