//
//  TwoVC.m
//  测试代码块
//
//  Created by Soundnet on 16/6/25.
//  Copyright © 2016年 Soundnet. All rights reserved.
//

#import "TwoVC.h"

@interface TwoVC ()

@property(nonatomic,copy)UITextField *textField;

@end

@implementation TwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor yellowColor];
    self.title=@"第二个界面";
    
//    _textField=[[UITextField alloc]initWithFrame:CGRectMake(30, 100, 300, 30)];
//    _textField.placeholder=@"请输入想要的内容";
//    [self.view addSubview:_textField];
//    _textField.backgroundColor=[UIColor whiteColor];
//    
//    
//    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(30,150, 300, 30)];
//    btn.backgroundColor=[UIColor blueColor];
//    [btn setTitle:@"返回" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];

   
}
-(void)btnClick
{
    NSLog(@"点击返回");
}


//代码块二
-(void)sendBlock2:(block2) block
{
    
    //……………发送请求并获取返回结果……………
    NSDictionary *dic = [[NSDictionary alloc]initWithObjects:[NSArray arrayWithObjects:@"name",@"state", nil] forKeys:[NSArray arrayWithObjects:@"wdl",@"ok", nil]];
    
    //返回请求结果
    block(dic);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
