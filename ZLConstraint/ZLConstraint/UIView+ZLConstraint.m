//
//  UIView+ZLConstraint.h
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import "UIView+ZLConstraint.h"

@implementation UIView (ZLConstraint)

- (instancetype)removeConstraintWithSuperview:(UIView *)superview superviewLayoutAttribute:(NSLayoutAttribute)superviewLayoutAttribute view:(UIView *)view layoutAttribute:(NSLayoutAttribute)layoutAttribute priority:(UILayoutPriority)priority shouldBeArchived:(BOOL)shouldBeArchived firstAnchor:(NSLayoutAnchor *)firstAnchor secondAnchor:(NSLayoutAnchor *)secondAnchor relation:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier active:(BOOL)active {
    for (NSLayoutConstraint *constraint in superview.constraints) {
        if (constraint.firstItem == view && constraint.firstAttribute == layoutAttribute && constraint.secondItem == superview && constraint.secondAttribute == superviewLayoutAttribute  && constraint.priority == priority && constraint.shouldBeArchived == shouldBeArchived && constraint.firstAnchor == firstAnchor && constraint.secondAnchor == secondAnchor && constraint.relation == relation && constraint.multiplier == multiplier && constraint.active == active) {
            [superview removeConstraint:constraint];
        }
    }

    return self;
}

- (instancetype)removeConstraintWithSuperview:(UIView *)superview view:(UIView *)view layoutAttribute:(NSLayoutAttribute)layoutAttribute {
    @try {
        for (NSLayoutConstraint *constraint in superview.constraints) {
            if (constraint.firstItem == view && constraint.firstAttribute == layoutAttribute) {
                [superview removeConstraint:constraint];
                //            break;
            }
        }
        
        return self;
        
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return nil;
    }
}

- (instancetype)removeTopConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeBottomConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeLeadingConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeTrailingConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeCenterXConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeCenterX];
}

- (instancetype)removeCenterYConstraint {
    return [self removeConstraintWithSuperview:self.superview view:self layoutAttribute:NSLayoutAttributeCenterY];
}

- (instancetype)removeWidthConstraint {
    return [self removeConstraintWithSuperview:self view:self layoutAttribute:NSLayoutAttributeWidth];
}

- (instancetype)removeHeightConstraint {
    return [self removeConstraintWithSuperview:self view:self layoutAttribute:NSLayoutAttributeHeight];
}

- (instancetype)removeConstraintWithLayoutAttribute:(NSLayoutAttribute)layoutAttribute {
    switch (layoutAttribute) {
        case NSLayoutAttributeTop:
            [self removeTopConstraint];
            break;
        case NSLayoutAttributeBottom:
            [self removeBottomConstraint];
            break;
        case NSLayoutAttributeLeading:
            [self removeLeadingConstraint];
            break;
        case NSLayoutAttributeTrailing:
            [self removeTrailingConstraint];
            break;
        case NSLayoutAttributeCenterX:
            [self removeCenterXConstraint];
            break;
        case NSLayoutAttributeCenterY:
            [self removeCenterYConstraint];
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
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self removeConstraintWithLayoutAttribute:viewLayoutAttribute];
        
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:viewLayoutAttribute relatedBy:NSLayoutRelationEqual toItem:toView attribute:toViewLayoutAttribute multiplier:1.0f constant:constant];
        [superview addConstraint:constraint];
        
        return self;
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return nil;
    }
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

- (instancetype)addBottomEqualTopConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
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

- (instancetype)addTrailingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addCenterXEqualCenterXConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX constant:constant];
}

- (instancetype)addCenterYEqualCenterYConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY constant:constant];
}

- (instancetype)addWidthConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (instancetype)addHeightConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (CGFloat)getConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute {
    @try {
        for (NSLayoutConstraint *constraint in superview.constraints) {
            if (constraint.firstItem == view && constraint.firstAttribute == viewLayoutAttribute) {
                return [constraint constant];
            }
        }
        
        return 0;
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return 0;
    }
}

- (CGFloat)getTopConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getBottomConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getLeadingConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getTrailingConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getCenterXConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (CGFloat)getCenterYConstraintConstant {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY];
}

- (CGFloat)getWidthConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth];
}

- (CGFloat)getHeightConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight];
}

@end
