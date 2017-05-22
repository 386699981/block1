//
//  fourViewController.h
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^testBlock)(NSString *textField);

@interface fourViewController : UIViewController

@property(nonatomic,copy)testBlock nextVCBlock;


-(void)nextVCBlock:(testBlock)block;

@end
