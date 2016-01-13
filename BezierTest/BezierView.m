//
//  BasaierView.m
//  Test
//
//  Created by yi on 16/1/12.
//  Copyright © 2016年 yi. All rights reserved.
//

#import "BezierView.h"

@interface BezierView ()<UIGestureRecognizerDelegate>
{
    UIBezierPath* aPath2;
    UIPanGestureRecognizer *pan;
    CGPoint controlPoint;
}

@end

@implementation BezierView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor grayColor];
        controlPoint = CGPointMake((self.bounds.size.width-20)/2, 50);
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
//    [super drawRect:rect];
    if (pan == nil) {
        pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dealPan:)];
        [self addGestureRecognizer:pan];
        self.userInteractionEnabled = YES;
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawLine:context];
    
    
}

- (void)drawLine:(CGContextRef)context
{
    UIColor *color2 = [UIColor redColor];
    [color2 set]; //设置线条颜色
    
    if (aPath2 == nil) {
        aPath2 = [UIBezierPath bezierPath];
        aPath2.lineWidth = 5.0;
        aPath2.lineCapStyle = kCGLineCapRound; //线条拐角
        aPath2.lineJoinStyle = kCGLineCapRound; //终点处理
    }
    [aPath2 removeAllPoints];
    [aPath2 moveToPoint:CGPointMake(20, 50)];
    [aPath2 addQuadCurveToPoint:CGPointMake(self.bounds.size.width-20, 50) controlPoint:controlPoint];
    [aPath2 stroke];
    NSLog(@"CGPointMake(x, y) = %@",NSStringFromCGPoint(controlPoint));
}

-(void)dealPan:(UIPanGestureRecognizer *)pan1
{
    
    CGPoint pt = [pan1 translationInView:self];
    
    NSLog(@"translationInView %@",NSStringFromCGPoint(pt));
    
    controlPoint = CGPointMake(pt.x+(self.bounds.size.width-20)/2, pt.y+50);
    [self setNeedsDisplay];
    
    CGPoint velocity = [pan1 velocityInView:self];
    NSLog(@"velocity %@",NSStringFromCGPoint(velocity));
    
    //手势停止
    if (pan1.state == UIGestureRecognizerStateEnded) {

        controlPoint = CGPointMake((self.bounds.size.width-20)/2, 50);
        [self setNeedsDisplay];
    }

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
