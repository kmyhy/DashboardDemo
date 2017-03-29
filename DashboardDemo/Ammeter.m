//
//  Ammeter.m
//  Dashboard
//
//  Created by qq on 2016/12/1.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "Ammeter.h"
#import "Dashboard.h"

@interface Ammeter(){

    CGFloat endValue;
    CGPoint center;
    CADisplayLink *displayLink;
    Boolean isAnimating;
}
@property (weak, nonatomic) IBOutlet Dashboard *dashboard;
@property (strong, nonatomic) IBOutlet UIView *view;

@end
@implementation Ammeter
// MARK: - initialize
-(void)xibSetup{
    self.view = [self loadViewFromNib];
    
    // use bounds not frame or it'll be offset
    self.view.frame = self.bounds;
    
    // Make the view stretch with containing view
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    
    [_dashboard setupDashboard];
    [self addSubview:self.view];
    
    displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(animateDashboard:)];
}
-(void)animateDashboard:(CADisplayLink *)sender{
    if( endValue <= self.value){// 到达终点值，停止动画
        self.value = endValue;
        [displayLink invalidate];
        isAnimating = NO;
    }else{
        CGFloat speed = endValue/0.75;
        CGFloat detalValue = sender.duration * speed;
    
        self.value += detalValue;
    }
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self startAnimating];
}
-(UIView*)loadViewFromNib{
    
    NSBundle *bundle = [NSBundle bundleForClass:[Ammeter class]];
    
    UINib* nib = [UINib nibWithNibName:@"Ammeter" bundle:bundle];
    
    UIView *view = (UIView*)[nib instantiateWithOwner:self options:nil][0];
    
    return view;
}
-(instancetype)initWithFrame:(CGRect)frame{
    // 1. setup any properties here
    
    // 2. call super.init(frame:)
    self = [super initWithFrame: frame];
    
    // 3. Setup view from .xib file
    [self xibSetup];
    
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    // 1. setup any properties here
    
    // 2. call super.init(coder:)
    self = [super initWithCoder:aDecoder];
    
    // 3. Setup view from .xib file
    [self xibSetup];
    
    return self;
}
// MARK: - Timer Handler
-(void)startAnimating{
    if(isAnimating == NO){
        endValue = self.value;
        self.value = 0;
        [displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
        isAnimating = YES;
    }
}
-(void)stopAnimating{
    [displayLink invalidate];
}
// MARK: - getter/setter
-(void)setMarkLength:(CGFloat)value{
    _markLength = value;
    _dashboard.markLength=value;
}
-(void)setMarkWidth:(CGFloat)value{
    _markWidth = value;
    _dashboard.markWidth=value;
}
-(void)setStartColor:(UIColor*)value{
    _startColor = value;
    _dashboard.startColor=value;
}
-(void)setEndColor:(UIColor*)value{
    _endColor = value;
    _dashboard.endColor=value;
}
-(void)setDefaultColor:(UIColor*)value{
    _defaultColor = value;
    _dashboard.defaultColor=value;
}
-(void)setDangerColor:(UIColor*)value{
    _dangerColor = value;
    _dashboard.dangerColor=value;
}
-(void)setValue:(CGFloat)value{
    _value = value;
    _dashboard.value=value;
    _lbRemainder.text = [NSString stringWithFormat:@"%.0f",value*100];
}
-(void)setDangerValue:(CGFloat)value{
    _dangerValue = value;
    _dashboard.dangerValue=value;
}
-(void)setMinMarkLength:(CGFloat)value{
    _minMarkLength = value;
    _dashboard.minMarkLength=value;
}
-(void)setMinMarkWidth:(CGFloat)value{
    _minMarkWidth = value;
    _dashboard.minMarkWidth=value;
}
-(void)setMinMarkColor:(UIColor*)value{
    _minMarkColor=value;

    _dashboard.minMarkColor=value;
}

-(void)setStartDegree:(CGFloat)startDegree{
    _startDegree = startDegree;
    _dashboard.startDegree = startDegree;
}
-(void)setEndDegree:(CGFloat)endDegree{
    _endDegree = endDegree;
    _dashboard.endDegree = endDegree;
}
@end
