//
//  MSFactory.m
//  Factory
//
//  Created by msjf on 2017/6/23.
//  Copyright © 2017年 common. All rights reserved.
//

#import "MSFactory.h"

@implementation MSFactory
+ (UILabel *)labelWithFrame:(CGRect)frame numberOflines:(NSInteger)lines text:(NSString *)text font:(UIFont*)font textColor:(UIColor *)textColor superView:(UIView *)superView{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.numberOfLines = lines;
    label.font = font;
    label.text = text;
    label.textColor = textColor;
    [superView addSubview:label];
    return label;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont superView:(UIView *)superVIew {
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = titleFont;
    [superVIew addSubview:btn];
    return btn;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image superView:(UIView *)superVIew {
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setImage:image forState:UIControlStateNormal];
    [superVIew addSubview:btn];
    return btn;
}
//textField
+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton superView:(UIView *)superView{
    UITextField *tx = [[UITextField alloc] initWithFrame:frame];
    if (isDefault) {
        tx.placeholder = placeholder;
    } else {
        NSAttributedString *astr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName : font, NSForegroundColorAttributeName : [textColor colorWithAlphaComponent:0.5]}];
        tx.attributedPlaceholder = astr;
        tx.tintColor = [UIColor redColor];
    }
    tx.textColor = textColor;
    tx.font = font;
    tx.secureTextEntry = secureTextEntry;
    [superView addSubview:tx];
    return tx;
}
+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftImage:(UIImage *)leftImage keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton  superView:(UIView *)superView{
    UITextField *tx = [[UITextField alloc] initWithFrame:frame];
    if (isDefault) {
        tx.placeholder = placeholder;
    } else {
        NSAttributedString *astr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName : font, NSForegroundColorAttributeName : [textColor colorWithAlphaComponent:0.5]}];
        tx.attributedPlaceholder = astr;
        tx.tintColor = [UIColor redColor];
    }
    tx.textColor = textColor;
    tx.font = font;
    tx.secureTextEntry = secureTextEntry;
    UIImageView *iv = [[UIImageView alloc] initWithImage:leftImage];
    iv.frame = CGRectMake(0, 0, frame.size.height / 2, frame.size.height / 2);
    tx.leftView = iv;
    tx.leftViewMode = UITextFieldViewModeAlways;
    tx.keyboardType = keyBoard;
    tx.clearButtonMode = clearButton;
    [superView addSubview:tx];
    return tx;
}

+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftText:(NSString *)leftText leftTextColor:(UIColor *)leftTextColor leftTextFont:(UIFont *)leftTextFont keyBoard:(UIKeyboardType)keyBoard clearButton:(UITextFieldViewMode)clearButton  superView:(UIView *)superView{
    UITextField *tx = [[UITextField alloc] initWithFrame:frame];
    if (isDefault) {
        tx.placeholder = placeholder;
    } else {
        NSAttributedString *astr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName : font, NSForegroundColorAttributeName : [textColor colorWithAlphaComponent:0.5]}];
        tx.attributedPlaceholder = astr;
        tx.tintColor = [UIColor redColor];
    }
    tx.textColor = textColor;
    tx.font = font;
    tx.secureTextEntry = secureTextEntry;
    UILabel *la = [[UILabel alloc] init];
    la.text = leftText;
    la.textColor = leftTextColor;
    la.font = leftTextFont;
    tx.leftView = la;
    tx.leftViewMode = UITextFieldViewModeAlways;
    tx.keyboardType = keyBoard;
    tx.clearButtonMode = clearButton;
    [superView addSubview:tx];
    return tx;
}

+ (UITextField *)textFiledWithFrame:(CGRect)frame placeholder:(NSString *)placeholder defaultPlaceholder:(BOOL)isDefault textColor:(UIColor *)textColor font:(UIFont *)font secureTextEntry:(BOOL)secureTextEntry leftView:(UIView *)leftView keyBoard:(UIKeyboardType)keyBoard  clearButton:(UITextFieldViewMode)clearButton superView:(UIView *)superView{
    UITextField *tx = [[UITextField alloc] initWithFrame:frame];
    if (isDefault) {
        tx.placeholder = placeholder;
    } else {
        NSAttributedString *astr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName : font, NSForegroundColorAttributeName : [textColor colorWithAlphaComponent:0.5]}];
        tx.attributedPlaceholder = astr;
        tx.tintColor = [UIColor redColor];
    }
    tx.textColor = textColor;
    tx.font = font;
    tx.secureTextEntry = secureTextEntry;
    
    tx.leftView = leftView;
    tx.leftViewMode = UITextFieldViewModeAlways;
    tx.keyboardType = keyBoard;
    tx.clearButtonMode = clearButton;
    [superView addSubview:tx];
    return tx;
}
@end
