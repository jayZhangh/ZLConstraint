//
//  UIView+ZLConstraint.h
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ZLScaleValue(value) value/320.0*[UIScreen mainScreen].bound.size.width

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ZLConstraint)

- (instancetype)removeConstraintWithSuperview:(UIView *)superview superviewLayoutAttribute:(NSLayoutAttribute)superviewLayoutAttribute view:(UIView *)view layoutAttribute:(NSLayoutAttribute)layoutAttribute;

/**
 删除约束属性
 @param superview           父视图
 @param view                当前视图
 @param layoutAttribute     约束属性
 */
- (instancetype)removeConstraintWithSuperview:(UIView *)superview view:(UIView *)view layoutAttribute:(NSLayoutAttribute)layoutAttribute;

/**
 删除左边约束属性
 */
- (instancetype)removeLeadingConstraint;

/**
 删除右边约束属性
 */
- (instancetype)removeTrailingConstraint;

/**
 删除上边约束属性
 */
- (instancetype)removeTopConstraint;

/**
 删除下边约束属性
 */
- (instancetype)removeBottomConstraint;

/**
 删除宽度约束属性
 */
- (instancetype)removeWidthConstraint;

/**
 删除高度约束属性
 */
- (instancetype)removeHeightConstraint;

/**
 删除左边约束属性
 @param layoutAttribute     需要删除的约束属性
 */
- (instancetype)removeConstraintWithLayoutAttribute:(NSLayoutAttribute)layoutAttribute;

/**
 添加约束属性
 @param superview               父视图
 @param view                    需要添加约束的视图
 @param viewLayoutAttribute     需要添加的约束属性
 @param toView                  关联的视图
 @param toViewLayoutAttribute   关联视图的约束属性
 @param constant                大小值
 */
- (instancetype)addConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(UIView * _Nullable)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute constant:(CGFloat)constant;

/**
 添加水平居中约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addCenterYEqualCenterYConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加垂直居中约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addCenterXEqualCenterXConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对左约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addLeadingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对右约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addLeadingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对左约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addTrailingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对右约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addTrailingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加上对上约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addTopEqualTopConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加上对下约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addTopEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对下约束属性
 @param toView     关联视图
 @param constant   大小值
 */
- (instancetype)addBottomEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加宽度约束属性
 @param constant   大小值
 */
- (instancetype)addWidthConstraintWithConstant:(CGFloat)constant;

/**
 添加高度约束属性
 @param constant   大小值
 */
- (instancetype)addHeightConstraintWithConstant:(CGFloat)constant;

/**
 获取约束的大小值
 @param superview               父视图
 @param view                    需要获取的视图
 @param viewLayoutAttribute     视图属性
 */
- (CGFloat)getConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute;

/**
 获取高度值
 */
- (CGFloat)getHeightConstraintConstant;

/**
 获取宽度值
 */
- (CGFloat)getWidthConstraintConstant;

@end

NS_ASSUME_NONNULL_END
