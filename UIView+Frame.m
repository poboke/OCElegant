//
//  UIView+Frame.m
//
//  Created by www.poboke.com on 14-6-1.
//  Copyright (c) 2014年 Poboke. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)


#pragma mark - Init
- (id)initWithSize:(CGSize)size
{
    CGRect rect = (CGRect){CGPointZero, size};
    return [self initWithFrame:rect];
}


#pragma mark - Get Property
- (CGPoint)origin
{
    return self.frame.origin;
}

- (CGFloat)x
{
    return self.origin.x;
}

- (CGFloat)y
{
    return self.origin.y;
}


- (CGSize)size
{
    return self.frame.size;
}

- (CGFloat)height
{
    return self.size.height;
}

- (CGFloat)width
{
    return self.size.width;
}


#pragma mark - Set Origin
- (void)setOrigin:(CGPoint)origin
{
    self.frame = (CGRect){origin, self.size};
}

- (void)setOriginX:(CGFloat)x
{
    [self setOrigin:CGPointMake(x, self.y)];
}

- (void)setOriginY:(CGFloat)y
{
    [self setOrigin:CGPointMake(self.x, y)];
}


#pragma mark - Set Size
- (void)setSize:(CGSize)size
{
    self.frame = (CGRect){self.origin, size};
}

- (void)setSizeWidth:(CGFloat)width
{
    [self setSize:CGSizeMake(width, self.height)];
}

- (void)setSizeHeight:(CGFloat)height
{
    [self setSize:CGSizeMake(self.width, height)];
}


#pragma mark - Set Anchor Point
- (void)setAnchorPoint:(CGPoint)anchorPoint
{
    [self setPosition:self.origin atAnchorPoint:anchorPoint];
}

- (void)setPosition:(CGPoint)point atAnchorPoint:(CGPoint)anchorPoint
{
    CGFloat x = point.x - anchorPoint.x * self.width;
    CGFloat y = point.y - anchorPoint.y * self.height;
    [self setOrigin:CGPointMake(x, y)];
}


@end
