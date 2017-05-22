//
//  fiveVC.h
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import <UIKit/UIKit.h>

// 1.使用typedef定义Block类型
typedef int(^MyBlock)(int, int);

@interface fiveVC : UIViewController

// 2.定义一个形参为Block的OC函数
- (void)useBlockForOC:(MyBlock)aBlock;

@end
