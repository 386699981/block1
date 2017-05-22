//
//  ViewController.m
//  测试代码块
//
//  Created by Soundnet on 16/6/25.
//  Copyright © 2016年 Soundnet. All rights reserved.
//

#import "ViewController.h"
#import "TwoVC.h"
#import "ThreeVC.h"
#import "fourViewController.h"
#import "fiveVC.h"
#import "SixViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"第一个界面";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 传值显示在label
    _label=[[UILabel alloc]initWithFrame:CGRectMake(30, 100, 300, 30)];
    [self.view addSubview:_label];
    _label.backgroundColor=[UIColor yellowColor];
    
    for (int i = 0; i< 5 ; i++) {
        UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(30, 150+i*80, 300, 30)];
        btn.backgroundColor=[UIColor blueColor];
        [btn setTitle:[NSString stringWithFormat:@"按钮%d",i] forState:UIControlStateNormal];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];

    }
   
    
  
}


-(void)btnClick:(UIButton *)sender
{
    
    //=== 0 和 2  4  比较有参考价值
    
    
    if (sender.tag == 0) {
        
        TwoVC *two = [TwoVC new];
        
        //代码块  -  传值
        [two sendBlock2:^(NSDictionary *dict) {
            
            NSLog(@"dict : %@",dict.description);
        }];

        
    }
    
    
    
    if (sender.tag == 1) {
        
    ThreeVC *three = [[ThreeVC alloc]init];
    [self.navigationController pushViewController:three animated:YES];
    }
    
    
    
    
    if (sender.tag == 2) {
        fourViewController *four = [[fourViewController alloc]init];
        [four nextVCBlock:^(NSString *textField) {
            //代码块  -  传值
            _label.text = textField;
            
        }];
        
        [self.navigationController pushViewController:four animated:YES];
        
        //        [self.navigationController presentViewController:four animated:YES completion:^{
        //
        //        }];
    }

    
    
    if (sender.tag == 3) {
        
        fiveVC *five = [[fiveVC alloc]init];
    
        [self.navigationController pushViewController:five animated:YES];
    }
   
    
    
    if (sender.tag == 4) {
        
        SixViewController *six = [[SixViewController alloc]init];
          [self.navigationController pushViewController:six animated:YES];
        [six arridblock:^(NSMutableArray *arrid) {
           
            NSLog(@"-----%@",arrid);
            
        }];
    }

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
