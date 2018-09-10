//
//  AViewController.m
//  ModuleAProject
//
//  Created by rjb on 2018/9/10.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "AViewController.h"
#import "UIImage+Color.h"
@interface AViewController ()
@property (nonatomic, strong)UIImageView *imageView;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, 100, 100)];
    self.imageView.image = [UIImage createImageWithColor:[UIColor redColor] size:CGSizeMake(50, 50) cornerRadius:10];
    [self.view addSubview:self.imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
