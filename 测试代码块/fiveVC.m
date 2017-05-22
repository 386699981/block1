//
//  fiveVC.m
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import "fiveVC.h"

@interface fiveVC ()

@end

@implementation fiveVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"第五";
     self.view.backgroundColor=[UIColor whiteColor];
    
    // 3.声明并赋值定义一个Block变量
//    MyBlock addBlock = ^(int x, int y){
//        return x+y;
//    };
//    
//   4.以Block作为函数参数,把Block像对象一样传递
//    [self useBlockForOC:addBlock];
    
    
    // 将第3点和第4点合并一起,以内联定义的Block作为函数参数
    [self useBlockForOC:^(int x, int y){
        return x+y;
    }];
    
}

//2.定义一个形参为Block的OC函数
- (void)useBlockForOC:(MyBlock)aBlock
{
    NSLog(@"result = %d", aBlock(300,200));
}


@end
