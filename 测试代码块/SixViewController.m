//
//  SixViewController.m
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController ()

@end

@implementation SixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    self.title = @"第五";
    self.view.backgroundColor=[UIColor whiteColor];
    
    //延迟10秒  网络延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        
        NSMutableArray *tempArr = [NSMutableArray arrayWithObject:@"11"];
        
        if (self.counpayBlock)  self.counpayBlock(tempArr);
        
        
    });
    
   
    
}


-(void)arridblock:(blockid)block
{
    if (block) {
        self.counpayBlock = [block copy];
    }
}


@end
