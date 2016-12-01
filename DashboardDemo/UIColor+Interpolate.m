//
//  UIColor+Interpolate.m
//  Client
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "UIColor+Interpolate.h"

@implementation UIColor(Interpolate)
+ (UIColor *)colorBetweenColor:(UIColor *)startColor andColor:(UIColor *)endColor atLocation:(CGFloat)location{
    
    const CGFloat *array1 = CGColorGetComponents(startColor.CGColor);
    const CGFloat *array2 = CGColorGetComponents(endColor.CGColor);
    double  array3[4];
    array3[0]=array1[0]+(array2[0]-array1[0])*location;
    array3[1]=array1[1]+(array2[1]-array1[1])*location;
    array3[2]=array1[2]+(array2[2]-array1[2])*location;
    array3[3]=array1[3]+(array2[3]-array1[3])*location;
//    [self logColor:array3 value:location];
    return [UIColor colorWithRed:array3[0] green:array3[1] blue:array3[2] alpha:array3[3]];
}

+(void)logColor:(CGFloat*)array3 value:(CGFloat)value{
    
    NSLog(@"rgba=%f,%f,%f,%f  value = %f",array3[0],array3[1],array3[2],array3[3],value);
}
@end
