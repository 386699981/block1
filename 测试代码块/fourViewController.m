//
//  fourViewController.m
//  测试代码块
//
//  Created by Soundnet on 17/3/28.
//  Copyright © 2017年 Soundnet. All rights reserved.
//

#import "fourViewController.h"

@interface fourViewController ()
@property(nonatomic,copy)UITextField *textField;
@end

@implementation fourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.view.backgroundColor=[UIColor yellowColor];
    self.title=@"第四";
    
    _textField=[[UITextField alloc]initWithFrame:CGRectMake(30, 100, 300, 30)];
    _textField.placeholder=@"请输入想要的内容";
    [self.view addSubview:_textField];
    _textField.backgroundColor=[UIColor whiteColor];
    
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(30,150, 300, 30)];
    btn.backgroundColor=[UIColor blueColor];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
    
}

-(void)nextVCBlock:(testBlock)block
{
    _nextVCBlock = block;
}

-(void)btnClick
{
    if (_nextVCBlock) {
        
        _nextVCBlock(_textField.text);
        
    }
    [self.navigationController popViewControllerAnimated:YES];
}


@end
