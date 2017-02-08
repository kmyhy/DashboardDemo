//
//  ViewController.m
//  DashboardDemo
//
//  Created by yanghongyan on 16/12/1.
//  Copyright © 2016年 yanghongyan. All rights reserved.
//

#import "ViewController.h"
#import "Ammeter.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet Ammeter *ammeter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 任意指定圆弧绘制的起始角度/终止角度（y轴的负轴为 0 度，顺时针增长）
    _ammeter.startDegree = 0;
    _ammeter.endDegree = 360;
    _ammeter.minMarkColor = [UIColor clearColor];
    _ammeter.value= 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonAction:(id)sender {

    
    [_ammeter startAnimating];
}

@end
