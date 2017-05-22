//
//  ThreeVC.m
//  测试代码块
//
//  Created by Soundnet on 17/3/27.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import "ThreeVC.h"

@interface ThreeVC ()


@end


@implementation ThreeVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"第三";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 我们可以像OC中声明变量一样使用Block类型SayHello来声明变量
    SayHello hello = ^(){
        NSLog(@"hello");
    };
    
    // 调用后控制台输出"hello"
    hello();
}

@end
