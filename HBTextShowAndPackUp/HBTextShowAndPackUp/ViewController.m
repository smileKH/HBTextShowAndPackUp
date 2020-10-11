//
//  ViewController.m
//  HBTextShowAndPackUp
//
//  Created by Mac on 2020/10/11.
//  Copyright © 2020 yanruyu. All rights reserved.
//

#import "ViewController.h"
#import "HBTextChangeVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 100);
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitle:@"转跳列表" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.layer.cornerRadius = 6;
    btn.clipsToBounds = YES;
    [btn addTarget:self action:@selector(clickJudeBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
#pragma mark ==========转跳==========
-(void)clickJudeBtn:(UIButton *)btn{
    HBTextChangeVC *vc = [[HBTextChangeVC alloc]init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}


@end
