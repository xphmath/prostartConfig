//
//  MSFactory.h
//  Factory
//
//  Created by msjf on 2017/6/23.
//  Copyright © 2017年 common. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSFactory : NSObject
//label
+ (UILabel *)labelWithFrame:(CGRect)frame numberOflines:(NSInteger)lines text:(NSString *)text font:(UIFont*)font textColor:(UIColor *)textColor superView:(UIView *)superView;
//button
//-->title
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont superView:(UIView *)superVIew;
//-->image
+ (UIButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image superView:(UIView *)superVIew;

//textFiled

+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton superView:(UIView *)superView;

+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftImage:(UIImage *)leftImage keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton  superView:(UIView *)superView;

+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftText:(NSString *)leftText leftTextColor:(UIColor *)leftTextColor leftTextFont:(UIFont *)leftTextFont keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton  superView:(UIView *)superView;
+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftView:(UIView *)leftView keyBoard:(UIKeyboardType)keyBoard  clearButton:(UITextFieldViewMode)clearButton superView:(UIView *)superView;
@end
