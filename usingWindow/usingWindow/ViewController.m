//
//  ViewController.m
//  usingWindow
//
//  Created by msjf on 2017/6/29.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic) UIImageView *iv;
@property (nonatomic) UITableView *t;
@property (nonatomic) NSArray *data;
@end

@implementation ViewController
-(UIView *)statusWindow {
//    NSString *statusBarString = @"_statusBarWindow";
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];

    return statusBar;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _iv = [UIImageView new];
    _iv.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    _iv.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:_iv];
    
    _data = @[@[@"我的勋章"],@[@"学习小组"],@[@"消息中心"],@[@"文章笔记",@"专栏留言"]];
    _t = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
//    _t.backgroundColor = [UIColor clearColor];
    _t.dataSource = self;
    _t.delegate = self;
    [_t registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    [self.view addSubview:_t];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _data.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_data[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    cell.textLabel.text = [_data[indexPath.section] objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"fav_fileicon_xls90"];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
