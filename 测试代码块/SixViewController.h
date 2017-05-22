//
//  SixViewController.h
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^blockid) (NSMutableArray *arrid);

@interface SixViewController : UIViewController

@property (nonatomic, copy) blockid counpayBlock;//代码块数据

-(void)arridblock:(blockid) block;
@end
