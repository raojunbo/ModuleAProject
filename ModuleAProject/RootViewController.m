//
//  RootViewController.m
//  ModuleAProject
//
//  Created by rjb on 2018/9/6.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "CTMediator.h"

@interface RootViewController ()
@property (nonatomic, strong)UIButton *button;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor whiteColor];
    self.title = @"A模块";
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.button setTitle:@"调到A" forState:UIControlStateNormal];
    self.button.frame = CGRectMake(0, 100, 100, 50);
    [self.button addTarget:self action:@selector(clickA) forControlEvents:UIControlEventTouchUpInside];
    self.button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.button];
    
    //整个这里相当与一个测试文件了。
    //对外有用的代码就在classes面
    
}

- (void)clickA {
    UIViewController*vc =  [[CTMediator sharedInstance] performTarget:@"ModuleAProject_A" action:@"moduleAProject_AViewController" params:nil shouldCacheTarget:NO];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)clickB {
    UIViewController*vc =  [[CTMediator sharedInstance] performTarget:@"ModuleAProject_B" action:@"moduleAProject_BViewController" params:nil shouldCacheTarget:NO];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
