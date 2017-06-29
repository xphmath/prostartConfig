//
//  MSTabBarModel.h
//  TabBar
//
//  Created by msjf on 2017/6/22.
//  Copyright © 2017年 common. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSTabBarModel : NSObject
@property (nonatomic, copy) NSString *vcName;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *normalImage;
@property (nonatomic, copy) NSString *selectedImage;
- (instancetype)initWithViewControllerName:(NSString *)vcName itemName:(NSString *)itemName normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage;
- (UIViewController *)createVC;
@end
