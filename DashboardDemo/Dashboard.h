//
//  Dashboaard.h
//  Dashboard
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Dashboard : UIView

IB_DESIGNABLE
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

//-(void)startAnimating;
//-(void)stopAnimating;
-(void)setupDashboard;
@end
