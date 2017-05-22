//
//  TwoVC.h
//  测试代码块
//
//  Created by Soundnet on 16/6/25.
//  Copyright © 2016年 Soundnet. All rights reserved.
//

#import <UIKit/UIKit.h>


//代码块
typedef void(^block2)(NSDictionary *dict);

@interface TwoVC : UIViewController



//代码块
-(void)sendBlock2:(block2) block;


@end
