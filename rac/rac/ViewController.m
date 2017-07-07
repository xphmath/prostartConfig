//
//  ViewController.m
//  rac
//
//  Created by msjf on 2017/7/4.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>
#import "RACViewController.h"
#import "REDView.h"
#import "ADView.h"
#import <ReactiveCocoa.h>
@interface ViewController ()<UIAlertViewDelegate,GADRewardBasedVideoAdDelegate>
@property (nonatomic) UITextField *tf;
@property (nonatomic) GADInterstitial *inters;


@property (nonatomic) GADAdLoader *adLoader;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *banner = [UILabel new];
    banner.frame = CGRectMake(0, 0, self.view.bounds.size.width, 17);
    banner.text = @"横幅";
    [self.view addSubview:banner];
    GADBannerView *adView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeFullBanner];
    adView.backgroundColor = [UIColor lightGrayColor];
    adView.rootViewController = self;
    adView.adUnitID = @"ca-app-pub-5193720999559045/5210484413";
    GADRequest *request = [GADRequest request];
    request.testDevices = @[@"21f26750fe9d96caa13be5b0d649e1210ae72a47",@"14a876e16bd5237f9818c53dfba742beb1aba701",@"82014e67e79c13cc39212140c0b6d93ef672fa33",@"d5821dfef430a907cd4d5c1b8104258e"];
    [adView loadRequest:request];
    [self.view addSubview:adView];
    
    //监听文本框
    _tf = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
    _tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_tf];
    [[self.tf rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(id x) {
        NSLog(@"%@",[x text]);
    } completed:^{
        
    }];
    //alertView
    
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"rac" message:@"RAC" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
   [[av rac_buttonClickedSignal] subscribeNext:^(id x) {
       NSLog(@"%@",x);
   }];
    [av show];
    //BTN
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 40)];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [[btn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        NSLog(@"click");
    }];
    //shoshi
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, 300, 40)];
    label.backgroundColor = [UIColor lightGrayColor];
    label.text = @"tap";
    label.userInteractionEnabled = YES;
    [self.view addSubview:label];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    [[tap rac_gestureSignal] subscribeNext:^(id x) {
        NSLog(@"tap");
    }];
    [label addGestureRecognizer:tap];
    
    
    REDView *redView = [REDView new];
    redView.frame = CGRectMake(0, 400, self.view.bounds.size.width, 100);
    [self.view addSubview:redView];
    [[redView rac_signalForSelector:@selector(btnClickaa:)] subscribeNext:^(id x) {
        NSLog(@"2");
    }];
    //插页广告
    _inters = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-5193720999559045/5989213611"];
    GADRequest *req = [GADRequest request];
    req.testDevices = @[@"d5821dfef430a907cd4d5c1b8104258e"];
    [_inters loadRequest:req];
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(adTest2) userInfo:nil repeats:NO];
    //
    [GADRewardBasedVideoAd sharedInstance].delegate = self;
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) {
        [[GADRewardBasedVideoAd sharedInstance] presentFromRootViewController:self];
    }
    //原生
    GADNativeExpressAdView *yuanshengADView = [[GADNativeExpressAdView alloc] initWithAdSize:kGADAdSizeBanner];
    yuanshengADView.frame = CGRectMake(0, self.view.bounds.size.height - 40, self.view.bounds.size.width, 40);
    yuanshengADView.backgroundColor = [UIColor grayColor];
    yuanshengADView.adUnitID = @"ca-app-pub-5193720999559045/8244676013";
    yuanshengADView.adSize = kGADAdSizeBanner;
    yuanshengADView.rootViewController = self;
    GADRequest *re = [GADRequest request];
    re.testDevices = @[@"d5821dfef430a907cd4d5c1b8104258e"];
    [NSTimer scheduledTimerWithTimeInterval:1.0f repeats:NO block:^(NSTimer * _Nonnull timer) {
        NSLog(@"ug");
        [yuanshengADView loadRequest:re];
    }];
    [yuanshengADView loadRequest:re];
    [self.view addSubview:yuanshengADView];
    //
}
- (void)adTest2 {
   
    if ([_inters isReady]) {
        [_inters presentFromRootViewController:self];
    }
}
- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
   didRewardUserWithReward:(GADAdReward *)reward{
    NSLog(@"");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    RACViewController *rvc = [RACViewController new];
//    [self presentViewController:rvc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
