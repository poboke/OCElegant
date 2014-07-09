//
//  UIView+Frame.h
//
//  Created by www.poboke.com on 14-6-1.
//  Copyright (c) 2014年 Poboke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

- (id)initWithSize:(CGSize)size;

- (CGPoint)origin;
- (CGFloat)x;
- (CGFloat)y;

- (CGSize)size;
- (CGFloat)height;
- (CGFloat)width;

- (void)setSize:(CGSize)size;
- (void)setSizeWidth:(CGFloat)width;
- (void)setSizeHeight:(CGFloat)height;

- (void)setOrigin:(CGPoint)origin;
- (void)setOriginX:(CGFloat)x;
- (void)setOriginY:(CGFloat)y;

- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setPosition:(CGPoint)point atAnchorPoint:(CGPoint)anchorPoint;

@end
