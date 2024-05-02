//
//  UIView+ZLConstraint.h
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import "UIView+ZLConstraint.h"

@implementation UIView (ZLConstraint)

#pragma mark - REMOVE
- (instancetype)removeConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute {
    @try {
        for (NSLayoutConstraint *constraint in superview.constraints) {
            if (constraint.firstItem == view && constraint.firstAttribute == viewLayoutAttribute && constraint.secondItem == toView && constraint.secondAttribute == toViewLayoutAttribute) {
                [superview removeConstraint:constraint];
//                break;
            }
        }
        
        return self;
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return nil;
    }
}

#pragma mark - REMOVE SELF TO
- (instancetype)removeTopEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeTopEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeWidthEqualWidthConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (instancetype)removeHeightEqualHeightConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (instancetype)removeCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (instancetype)removeCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

#pragma mark - REMOVE TO
- (instancetype)removeTopEqualTopConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeTopEqualBottomConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualBottomConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualTopConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeLeadingEqualLeadingConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeLeadingEqualTrailingConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualTrailingConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualLeadingConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeWidthEqualWidthConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (instancetype)removeHeightEqualHeightConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (instancetype)removeCenterXEqualCenterXConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (instancetype)removeCenterYEqualCenterYConstraintWithToView:(UIView *)toView {
    return [self removeConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

#pragma mark - REMOVE SELF
- (instancetype)removeTopEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeTopEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (instancetype)removeBottomEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (instancetype)removeLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (instancetype)removeTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (instancetype)removeWidthEqualWidthConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (instancetype)removeHeightEqualHeightConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (instancetype)removeWidthConstraint {
    return [self removeConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (instancetype)removeHeightConstraint {
    return [self removeConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (instancetype)removeCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (instancetype)removeCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self removeConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

#pragma mark - ADD
- (instancetype)addConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute constant:(CGFloat)constant {
    @try {
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self removeConstraintWithSuperview:superview view:view viewLayoutAttribute:viewLayoutAttribute toView:toView toViewLayoutAttribute:toViewLayoutAttribute];
        
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view attribute:viewLayoutAttribute relatedBy:NSLayoutRelationEqual toItem:toView attribute:toViewLayoutAttribute multiplier:1.0f constant:constant];
        [superview addConstraint:constraint];
        
        return self;
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return nil;
    }
}

#pragma mark - ADD SELF TO
- (instancetype)addTopEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
}

- (instancetype)addTopEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addBottomEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addBottomEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
}

- (instancetype)addLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addWidthEqualWidthConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth constant:constant];
}

- (instancetype)addHeightEqualHeightConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight constant:constant];
}

- (instancetype)addCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX constant:constant];
}

- (instancetype)addCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY constant:constant];
}

#pragma mark - ADD TO
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

- (instancetype)addWidthEqualWidthConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth constant:constant];
}

- (instancetype)addHeightEqualHeightConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight constant:constant];
}

- (instancetype)addCenterXEqualCenterXConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX constant:constant];
}

- (instancetype)addCenterYEqualCenterYConstraintWithToView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY constant:constant];
}

#pragma mark - ADD SELF
- (instancetype)addTopEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
}

- (instancetype)addTopEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addBottomEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom constant:constant];
}

- (instancetype)addBottomEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop constant:constant];
}

- (instancetype)addLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing constant:constant];
}

- (instancetype)addTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading constant:constant];
}

- (instancetype)addWidthEqualWidthConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth constant:constant];
}

- (instancetype)addHeightEqualHeightConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight constant:constant];
}

- (instancetype)addWidthConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (instancetype)addHeightConstraintWithConstant:(CGFloat)constant {
    return [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
}

- (instancetype)addCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX constant:constant];
}

- (instancetype)addCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant {
    return [self addConstraintWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY constant:constant];
}

#pragma mark - GET
- (CGFloat)getConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute {
    @try {
        for (NSLayoutConstraint *constraint in superview.constraints) {
            if (constraint.firstItem == view && constraint.firstAttribute == viewLayoutAttribute && constraint.secondItem == toView && constraint.secondAttribute == toViewLayoutAttribute) {
                return [constraint constant];
            }
        }
        
        return 0;
    } @catch (NSException *exception) {
        NSLog(@"exception: %@", exception);
        return 0;
    }
}

#pragma mark - GET SELF TO
- (CGFloat)getTopEqualTopConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getTopEqualBottomConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualBottomConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualTopConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getLeadingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getLeadingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getWidthEqualWidthConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (CGFloat)getHeightEqualHeightConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (CGFloat)getCenterXEqualCenterXConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (CGFloat)getCenterYEqualCenterYConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:view viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

#pragma mark - GET TO
- (CGFloat)getTopEqualTopConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getTopEqualBottomConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualBottomConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualTopConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getLeadingEqualLeadingConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getLeadingEqualTrailingConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualTrailingConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualLeadingConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getWidthEqualWidthConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (CGFloat)getHeightEqualHeightConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (CGFloat)getCenterXEqualCenterXConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (CGFloat)getCenterYEqualCenterYConstraintConstantWithToView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:self.superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

#pragma mark - GET SELF
- (CGFloat)getTopEqualTopConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getTopEqualBottomConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTop toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualBottomConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeBottom];
}

- (CGFloat)getBottomEqualTopConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeBottom toView:toView toViewLayoutAttribute:NSLayoutAttributeTop];
}

- (CGFloat)getLeadingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getLeadingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeLeading toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeTrailing];
}

- (CGFloat)getTrailingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeTrailing toView:toView toViewLayoutAttribute:NSLayoutAttributeLeading];
}

- (CGFloat)getWidthEqualWidthConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:toView toViewLayoutAttribute:NSLayoutAttributeWidth];
}

- (CGFloat)getHeightEqualHeightConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:toView toViewLayoutAttribute:NSLayoutAttributeHeight];
}

- (CGFloat)getWidthConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (CGFloat)getHeightConstraintConstant {
    return [self getConstraintConstantWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeHeight toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (CGFloat)getCenterXEqualCenterXConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterX toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterX];
}

- (CGFloat)getCenterYEqualCenterYConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView {
    return [self getConstraintConstantWithSuperview:superview view:self viewLayoutAttribute:NSLayoutAttributeCenterY toView:toView toViewLayoutAttribute:NSLayoutAttributeCenterY];
}

@end
