//
//  ViewController.m
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ZLConstraint.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *constraintView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%f", ZLScaleValue(20));
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    [[[[view1 addHeightConstraintWithConstant:50] addLeadingEqualLeadingConstraintWithSuperview:self.view toView:self.view constant:50] addTrailingEqualTrailingConstraintWithSuperview:self.view toView:self.view constant:-50] addTopEqualTopConstraintWithSuperview:self.view toView:self.view constant:50];
    
    [[self.constraintView addWidthConstraintWithConstant:ZLScaleValue(20)] addHeightConstraintWithConstant:ZLScaleValue(20)];
    
    [view1 removeTopEqualTopConstraintWithSuperview:self.view toView:self.view];
    [view1 addBottomEqualTopConstraintWithSuperview:self.view toView:self.constraintView constant:0];
    [view1 addBottomEqualTopConstraintWithSuperview:self.view toView:self.constraintView constant:0];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view2];
    
    [view2 addCenterXEqualCenterXConstraintWithSuperview:self.view toView:view1 constant:0];
    [view2 addCenterYEqualCenterYConstraintWithSuperview:self.view toView:view1 constant:0];
    [[view2 addWidthConstraintWithConstant:50] addHeightConstraintWithConstant:50];
    
    [view2 addCenterXEqualCenterXConstraintWithSuperview:self.view toView:self.constraintView constant:0];
    [view2 addCenterYEqualCenterYConstraintWithSuperview:self.view toView:view1 constant:0];
    
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view3];

    [view3 addLeadingEqualLeadingConstraintWithToView:self.constraintView constant:10];
    [view3 addTrailingEqualTrailingConstraintWithToView:self.view constant:-20];
    [view3 addTopEqualTopConstraintWithToView:self.constraintView constant:30];
    [view3 addBottomEqualBottomConstraintWithToView:self.view constant:-40];
    
    CGFloat leadingConstant = [view3 getLeadingEqualLeadingConstraintConstantWithToView:self.constraintView];
    CGFloat trailingConstant = [view3 getTrailingEqualTrailingConstraintConstantWithToView:self.view];
    CGFloat topConstant = [view3 getTopEqualTopConstraintConstantWithToView:self.constraintView];
    CGFloat bottomConstant = [view3 getBottomEqualBottomConstraintConstantWithToView:self.view];
    NSLog(@"%f   %f   %f   %f", leadingConstant, trailingConstant, topConstant, bottomConstant);
    
    [view3 removeLeadingEqualLeadingConstraintWithToView:self.constraintView];
    leadingConstant = [view3 getLeadingEqualLeadingConstraintConstantWithToView:self.constraintView];
    NSLog(@"%f   %f   %f   %f", leadingConstant, trailingConstant, topConstant, bottomConstant);
    
    [view3 addLeadingEqualLeadingConstraintWithToView:view1 constant:10];
}

@end
