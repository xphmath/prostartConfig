//
//  ViewController.m
//  加密
//
//  Created by msjf on 2017/6/15.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "SSKeychain.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSError *error = nil;
//  BOOL ret =  [SSKeychain setPassword:_passwordTF.text forService:@"service" account:_accountTF.text error:&error];
    NSLog(@"%@",error);
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"success" message:[SSKeychain passwordForService:@"service" account:_accountTF.text] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [av show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
