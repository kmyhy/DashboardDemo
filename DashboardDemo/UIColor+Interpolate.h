//
//  UIColor+Interpolate.h
//  Client
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Interpolate)
+ (UIColor *)colorBetweenColor:(UIColor *)startColor andColor:(UIColor *)endColor atLocation:(CGFloat)location;
@end
