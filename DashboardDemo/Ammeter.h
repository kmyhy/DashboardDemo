//
//  Ammeter.h
//  Dashboard
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface Ammeter : UIView

@property(assign,nonatomic)IBInspectable CGFloat markLength;
@property(assign,nonatomic)IBInspectable CGFloat markWidth;
@property(strong,nonatomic)IBInspectable UIColor* startColor;
@property(strong,nonatomic)IBInspectable UIColor* endColor;
@property(strong,nonatomic)IBInspectable UIColor* defaultColor;
@property(strong,nonatomic)IBInspectable UIColor* dangerColor;
@property(assign,nonatomic)IBInspectable CGFloat value;
@property(assign,nonatomic)IBInspectable CGFloat dangerValue;

@property(assign,nonatomic)IBInspectable CGFloat minMarkLength;
@property(assign,nonatomic)IBInspectable CGFloat minMarkWidth;
@property(strong,nonatomic)IBInspectable UIColor* minMarkColor;

@property(assign,nonatomic)IBInspectable CGFloat startDegree;// 开始角度
@property(assign,nonatomic)IBInspectable CGFloat endDegree;// 结束角度
// UILabels

@property (weak, nonatomic) IBOutlet UILabel *lbPower;
@property (weak, nonatomic) IBOutlet UILabel *lbRemainder;
@property (weak, nonatomic) IBOutlet UILabel *lbPercentSign;

-(void)startAnimating;
-(void)stopAnimating;

@end
