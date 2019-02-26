//
//  UIView+ZLConstraint.m
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import "UIView+ZLConstraint.h"

@implementation UIView (ZLConstraint)

- (instancetype)removeConstraintWithSuperview:(UIView *)superview view:(UIView *)view layoutAttribute:(NSLayoutAttribute)layoutAttribute {
    for (NSLayoutConstraint *constraint in superview.constraints) {
        if (constraint.firstItem == view && constraint.firstAttribute == layoutAttribute) {
            [superview removeConstraint:constraint];
            //            break;
        }
    }
    
    return self;
}

- (instancetype)removeLeadingConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeTrailingConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTopConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeBottomConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeWidthConstraint {
    return [self removeConstraintWithSuperview:self view:self layoutAttribute:NSLayoutAttributeWidth];
}

- (instancetype)removeHeightConstraint {
    return [self removeConstraintWithSuperview:self view:self layoutAttribute:NSLayoutAttributeHeight];
}

- (instancetype)removeConstraintWithLayoutAttribute:(NSLayoutAttribute)layoutAttribute {
    switch (layoutAttribute) {
        case NSLayoutAttributeLeading:
            [self removeLeadingConstraint];
            break;
        case NSLayoutAttributeTrailing:
            [self removeTrailingConstraint];
            break;
        case NSLayoutAttributeTop:
            [self removeTopConstraint];
            break;
        case NSLayoutAttributeBottom:
            [self removeBottomConstraint];
            break;
        case NSLayoutAttributeWidth:
            [self removeWidthConstraint];
            break;
        case NSLayoutAttributeHeight:
            [self removeHeightConstraint];
            break;
        default:
            break;
    }
    
    return self;
}

- (instancetype)addConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(UIView * _Nullable)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute constant:(CGFloat)constant {
    @try {
        if (view.superview == nil) {
            NSLog(@"error 请先添加该视图!");
            return nil;
        }
        
        switch (viewLayoutAttribute) {
            case NSLayoutAttributeTop:
            case  NSLayoutAttributeBottom:
            case NSLayoutAttributeLeading:
            case NSLayoutAttributeTrailing: {
                if (superview != view.superview) {
                    return nil;
                }
                break;
            }
            default:
                break;
        }
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self removeConstraintWithLayoutAttribute:viewLayoutAttribute];
        
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:viewLayoutAttribute relatedBy:NSLayoutRelationEqual toItem:toView attribute:toViewLayoutAttribute multiplier:1.0f constant:constant];
        [superview addConstraint:constraint];
        
        return self;
    } @catch (NSException *exception) {
        NSLog(@"error: %@", exception);
        return nil;
    }
}

- (instancetype)addLeadingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addLeadingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTrailingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTopEqualTopConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
}

- (instancetype)addTopEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addBottomEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addWidthConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (instancetype)addHeightConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (CGFloat)getConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute {
    if (view.superview == nil) {
        NSLog(@"error: 请先添加该视图!");
        return 0;
    }
    
    for (NSLayoutConstraint *constraint in superview.constraints) {
        if (constraint.firstItem == view && constraint.firstAttribute == viewLayoutAttribute) {
            return [constraint constant];
        }
    }
    
    return 0;
}

- (CGFloat)getHeightConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight];
}

- (CGFloat)getWidthConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth];
}

@end
