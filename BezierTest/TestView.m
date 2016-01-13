//
//  TestView.m
//  Test
//
//  Created by yi on 16/1/9.
//  Copyright © 2016年 yi. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (void)drawRect:(CGRect)rect
{
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
//    UIBezierPath* aPath = [UIBezierPath bezierPath];
    
    aPath.lineWidth = 5.0;
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    
    [aPath moveToPoint:CGPointMake(20, 100)];
    [aPath addQuadCurveToPoint:CGPointMake(120, 100) controlPoint:CGPointMake(70, 0)];
    
    [aPath stroke];
    
    
    
    
    
    UIColor *color2 = [UIColor redColor];
    [color2 set]; //设置线条颜色
    
    UIBezierPath* aPath2 = [UIBezierPath bezierPath];
    aPath2.lineWidth = 5.0;
    aPath2.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath2.lineJoinStyle = kCGLineCapRound; //终点处理
    [aPath2 moveToPoint:CGPointMake(20, 50)];
    [aPath2 addCurveToPoint:CGPointMake(200, 50) controlPoint1:CGPointMake(110, 0) controlPoint2:CGPointMake(110, 100)];
    [aPath2 stroke];
    
    

    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
