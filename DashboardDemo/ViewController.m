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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonAction:(id)sender {
    [_ammeter startAnimating];
}

@end
