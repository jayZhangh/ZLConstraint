//
//  UIView+ZLConstraint.h
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 比例值 Aspect Ratio */
#define ZLScaleValue(scaleValue) scaleValue/320.0*[UIScreen mainScreen].bounds.size.width

NS_ASSUME_NONNULL_BEGIN

/**
 * UIView的自动布局约束，NSAutoLayout自动布局代码的封装，XIB自动布局适配
 * 在以下代码中添加 [view.superview layoutIfNeeded]; 实现动画.
 * [UIView animateWithDuration:0.1 animations:^{
 *    code...
 *    [view.superview layoutIfNeeded];
 * }];
 */
@interface UIView (ZLConstraint)

#pragma mark - REMOVE
/**
 删除约束属性
 @param  superview               父视图
 @param  view                    当前添加约束的视图
 @param  viewLayoutAttribute     当前视图添加的约束属性
 @param  toView                  关联的视图
 @param  toViewLayoutAttribute   关联视图的约束属性
 @return instancetype            当前视图对象
 */
- (instancetype)removeConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute;

#pragma mark - REMOVE SELF TO
/**
 删除上对上约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除上对下约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除下对下约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除下对上约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除左对左约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除左对右约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除右对右约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除右对左约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除宽度对宽度约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeWidthEqualWidthConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除高度对高度约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeHeightEqualHeightConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除水平居中对水平居中约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 删除垂直居中对垂直居中约束属性
 @param  superview          父视图
 @param  view               当前添加约束的视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

#pragma mark - REMOVE SELF
/**
 删除上对上约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除上对下约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除下对下约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除下对上约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除左对左约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除左对右约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除右对右约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除右对左约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除宽度对宽度约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeWidthEqualWidthConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除高度对高度约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeHeightEqualHeightConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除宽度约束属性
 @return instancetype       当前视图对象
 */
- (instancetype)removeWidthConstraint;

/**
 删除高度约束属性
 @return instancetype       当前视图对象
 */
- (instancetype)removeHeightConstraint;

/**
 删除水平居中对水平居中约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 删除垂直居中对垂直居中约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView;

#pragma mark - REMOVE TO
/**
 删除上对上约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualTopConstraintWithToView:(UIView *)toView;

/**
 删除上对下约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTopEqualBottomConstraintWithToView:(UIView *)toView;

/**
 删除下对下约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualBottomConstraintWithToView:(UIView *)toView;

/**
 删除下对上约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeBottomEqualTopConstraintWithToView:(UIView *)toView;

/**
 删除左对左约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualLeadingConstraintWithToView:(UIView *)toView;

/**
 删除左对右约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeLeadingEqualTrailingConstraintWithToView:(UIView *)toView;

/**
 删除右对右约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualTrailingConstraintWithToView:(UIView *)toView;

/**
 删除右对左约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeTrailingEqualLeadingConstraintWithToView:(UIView *)toView;

/**
 删除宽度对宽度约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeWidthEqualWidthConstraintWithToView:(UIView *)toView;

/**
 删除高度对高度约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeHeightEqualHeightConstraintWithToView:(UIView *)toView;

/**
 删除水平居中对水平居中约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterXEqualCenterXConstraintWithToView:(UIView *)toView;

/**
 删除垂直居中对垂直居中约束属性
 @param  toView             关联的视图
 @return instancetype       当前视图对象
 */
- (instancetype)removeCenterYEqualCenterYConstraintWithToView:(UIView *)toView;

#pragma mark - ADD
/**
 添加约束属性
 @param  superview               父视图
 @param  view                    当前需要添加约束的视图
 @param  viewLayoutAttribute     当前视图添加的约束属性
 @param  toView                  关联的视图
 @param  toViewLayoutAttribute   关联视图的约束属性
 @param  constant                大小值
 @return instancetype            当前视图对象
 */
- (instancetype)addConstraintWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute constant:(CGFloat)constant;

#pragma mark - ADD SELF TO
/**
 添加上对上约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加上对下约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对下约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualBottomConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对上约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualTopConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对左约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对右约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对右约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对左约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加宽度对宽度约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addWidthEqualWidthConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加高度对高度约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addHeightEqualHeightConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加水平居中对水平居中约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加垂直居中对垂直居中约束属性
 @param  superview          父视图
 @param  view               当前需要添加约束的视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView constant:(CGFloat)constant;

#pragma mark - ADD TO
/**
 添加上对上约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualTopConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加上对下约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对下约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualBottomConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对上约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualTopConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对左约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对右约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对右约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualTrailingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对左约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualLeadingConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加宽度对宽度约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addWidthEqualWidthConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加高度对高度约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addHeightEqualHeightConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加水平居中对水平居中约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterXEqualCenterXConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加垂直居中对垂直居中约束属性
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterYEqualCenterYConstraintWithToView:(UIView *)toView constant:(CGFloat)constant;

#pragma mark - ADD SELF
/**
 添加上对上约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加上对下约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTopEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对下约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualBottomConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加下对上约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addBottomEqualTopConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对左约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加左对右约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addLeadingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对右约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualTrailingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加右对左约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addTrailingEqualLeadingConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加宽度对宽度约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addWidthEqualWidthConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加高度对高度约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addHeightEqualHeightConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加宽度约束属性
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addWidthConstraintWithConstant:(CGFloat)constant;

/**
 添加高度约束属性
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addHeightConstraintWithConstant:(CGFloat)constant;

/**
 添加水平居中对水平居中约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterXEqualCenterXConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

/**
 添加垂直居中对垂直居中约束属性
 @param  superview          父视图
 @param  toView             关联的视图
 @param  constant           大小值
 @return instancetype       当前视图对象
 */
- (instancetype)addCenterYEqualCenterYConstraintWithSuperview:(UIView *)superview toView:(UIView *)toView constant:(CGFloat)constant;

#pragma mark - GET
/**
 获取约束属性的大小值
 @param  superview               父视图
 @param  view                    当前添加约束的视图
 @param  viewLayoutAttribute     当前视图添加的约束属性
 @param  toView                  关联的视图
 @param  toViewLayoutAttribute   关联视图的约束属性
 @return CGFloat                 约束属性的大小值
 */
- (CGFloat)getConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view viewLayoutAttribute:(NSLayoutAttribute)viewLayoutAttribute toView:(nullable UIView *)toView toViewLayoutAttribute:(NSLayoutAttribute)toViewLayoutAttribute;

#pragma mark - GET SELF TO
/**
 获取上对上约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualTopConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取上对下约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualBottomConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取下对下约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualBottomConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取下对上约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualTopConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取左对左约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取左对右约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取右对右约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取右对左约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取宽度对宽度约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getWidthEqualWidthConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取高度对高度约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getHeightEqualHeightConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取水平居中对水平居中约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterXEqualCenterXConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

/**
 获取垂直居中对垂直居中约束属性的大小值
 @param  superview      父视图
 @param  view           当前添加约束的视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterYEqualCenterYConstraintConstantWithSuperview:(UIView *)superview view:(UIView *)view toView:(UIView *)toView;

#pragma mark - GET TO
/**
 获取上对上约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualTopConstraintConstantWithToView:(UIView *)toView;

/**
 获取上对下约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualBottomConstraintConstantWithToView:(UIView *)toView;

/**
 获取下对下约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualBottomConstraintConstantWithToView:(UIView *)toView;

/**
 获取上对上约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualTopConstraintConstantWithToView:(UIView *)toView;

/**
 获取左对左约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualLeadingConstraintConstantWithToView:(UIView *)toView;

/**
 获取左对右约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualTrailingConstraintConstantWithToView:(UIView *)toView;

/**
 获取右对右约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualTrailingConstraintConstantWithToView:(UIView *)toView;

/**
 获取右对左约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualLeadingConstraintConstantWithToView:(UIView *)toView;

/**
 获取宽度对宽度约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getWidthEqualWidthConstraintConstantWithToView:(UIView *)toView;

/**
 获取高度对高度约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getHeightEqualHeightConstraintConstantWithToView:(UIView *)toView;

/**
 获取水平居中对水平居中约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterXEqualCenterXConstraintConstantWithToView:(UIView *)toView;

/**
 获取垂直居中对垂直居中约束属性的大小值
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterYEqualCenterYConstraintConstantWithToView:(UIView *)toView;

#pragma mark - GET SELF
/**
 获取上对上约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualTopConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取上对下约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTopEqualBottomConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取下对下约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualBottomConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取下对上约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getBottomEqualTopConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取左对左约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取左对右约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getLeadingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取右对右约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualTrailingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取右对左约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getTrailingEqualLeadingConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取宽度对宽度约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getWidthEqualWidthConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取高度对高度约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getHeightEqualHeightConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取宽度约束属性的大小值
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getWidthConstraintConstant;

/**
 获取高度约束属性的大小值
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getHeightConstraintConstant;

/**
 获取水平居中对水平居中约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterXEqualCenterXConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

/**
 获取垂直居中对垂直居中约束属性的大小值
 @param  superview      父视图
 @param  toView         关联的视图
 @return CGFloat        约束属性的大小值
 */
- (CGFloat)getCenterYEqualCenterYConstraintConstantWithSuperview:(UIView *)superview toView:(UIView *)toView;

@end

NS_ASSUME_NONNULL_END
