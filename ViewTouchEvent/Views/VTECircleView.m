//
//  VTECircleView.m
//  ViewTouchEvent
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "VTECircleView.h"

@implementation VTECircleView

- (instancetype)init
{
    self = [super init];
    if (self) {
        circles = [NSMutableArray new];
    }
    return self;
}

#pragma mark - UIView methods

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    
    CGColorRef color = [UIColor redColor].CGColor;
    
    CGContextSetFillColor(context, CGColorGetComponents(color));
    
    int size = 25;
    
    for (NSValue *touch in circles) {
        CGPoint point = touch.CGPointValue;
        CGRect region = CGRectMake(point.x, point.y, size, size);
        
        CGContextAddEllipseInRect(context, region);
        CGContextFillEllipseInRect(context, region);
    }
    
    CGContextStrokePath(context);
}

#pragma mark - UIResponder methods

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan received...");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded received. Logging the touch point");
    
    UITouch *touch = [touches anyObject];
    
    CGPoint touchPoint = [touch locationInView:self];
    
    // We need encapsulate the CGPoint inside of an NSValue because the CGPoint isn't an properly object.
    [circles addObject:[NSValue valueWithCGPoint:touchPoint]];
    
    [self setNeedsDisplay];
}

@end