//
//  ViewController.m
//  usingFMDB
//
//  Created by msjf on 2017/6/19.
//  Copyright © 2017年 common. All rights reserved.
//

#import "ViewController.h"
#import "MSDBServiceManage.h"
#import "Person.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *agelabel;
@property (weak, nonatomic) IBOutlet UITextField *sexLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *pe = [Person new];
    pe.name = @"1";
    pe.age = @"2";
    pe.sex = @"nan";
    [[[MSDBServiceManage manager] personService] insertPerson:pe];
}
- (IBAction)inser:(id)sender {
    Person *pe = [Person new];
    pe.name = _nameLabel.text;
    pe.age = _agelabel.text;
    pe.sex = _sexLabel.text;
    [[[MSDBServiceManage manager] personService] insertPerson:pe];
}
- (IBAction)select:(id)sender {
   Person *p = [[[MSDBServiceManage manager] personService] selectPerson:_nameLabel.text];
    if (p) {
        _nameLabel.text = p.name;
        _sexLabel.text = p.sex;
        _agelabel.text = p.age;
    }
}
- (IBAction)all:(id)sender {
    NSArray *par = [[[MSDBServiceManage manager] personService] selectAll];
    NSLog(@"%@",par);
}
- (IBAction)delete:(id)sender {
    Person *pe = [Person new];
    pe.name = _nameLabel.text;
    pe.age = _agelabel.text;
    pe.sex = _sexLabel.text;
    [[[MSDBServiceManage manager] personService] deletePerson:pe];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
