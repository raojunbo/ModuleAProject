//
//  Target_ModuleAProject_A.h
//  ModuleAProject
//
//  Created by rjb on 2018/9/10.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AViewController.h"
/*
 A工程的A模块
 */

//可以将整个工程里的文件编译成一个静态库。这样就能编译通过
@interface Target_ModuleAProject_A : NSObject

- (UIViewController *)Action_moduleAProject_AViewController:(NSDictionary *)dict;

@end
