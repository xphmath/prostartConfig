//
//  TestViewController.m
//  enterBack
//
//  Created by msjf on 2017/6/21.
//  Copyright © 2017年 common. All rights reserved.
//

#import "TestViewController.h"
#import <BmobSDK/Bmob.h>
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UILabel *l = [UILabel new];
    l.frame = self.view.bounds;
    l.text = @"央视新闻客户端6月20日报道，中共中央总书记、国家主席、中央军委主席、中央军民融合发展委员会主任习近平于6月20日下午主持召开中央军民融合发展委员会第一次全体会议并发表重要讲话。习近平强调，把军民融合发展上升为国家战略，是我们长期探索经济建设和国防建设协调发展规律的重大成果，是从国家发展和安全全局出发作出的重大决策，是应对复杂安全威胁、赢得国家战略优势的重大举措。要加强集中统一领导，贯彻落实总体国家安全观和新形势下军事战略方针，突出问题导向，强化顶层设计，加强需求统合，统筹增量存量，同步推进体制和机制改革、体系和要素融合、制度和标准建设，加快形成全要素、多领域、高效益的军民融合深度发展格局，逐步构建军民一体化的国家战略体系和能力。";
    l.numberOfLines = 0;
    
    [self.view addSubview:l];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:@"i"];
    [[NSUserDefaults standardUserDefaults] setInteger:i+1 forKey:@"i"];
    BmobObject *ob = [BmobObject objectWithClassName:@"class"];
    [ob setObject:@"huiui" forKey:@"name"];
    [ob setObject:[NSString stringWithFormat:@"hifuu%ld",i+1] forKey:@"mid"];

    [ob saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (error) {
            NSLog(@"%@",error);
        }
    }];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    BmobQuery *query = [BmobQuery queryWithClassName:@"class"];
    [query getObjectInBackgroundWithId:@"7b455132ed" block:^(BmobObject *object, NSError *error) {
        NSLog(@"%@",object);
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
