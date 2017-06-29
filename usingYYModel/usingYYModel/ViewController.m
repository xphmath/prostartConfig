//
//  ViewController.m
//  usingYYModel
//
//  Created by msjf on 2017/6/29.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "YYModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"testJSON" ofType:@"geojson"];
    NSString *str = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    TestModel *m = [TestModel yy_modelWithJSON:str];
    NSLog(@"%@",m);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
