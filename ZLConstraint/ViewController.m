//
//  ViewController.m
//  ZLConstraint
//
//  Created by ZhangLiang on 2019/1/20.
//  Copyright © 2019 jay. All rights reserved.
//

#import "ViewController.h"
#import "ZLConstraint/UIView+ZLConstraint.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *constraintView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    [[[[view1 addHeightConstraintWithConstant:50] addLeadingEqualLeadingConstraintWithToView:self.view constant:50] addTopEqualTopConstraintWithToView:self.view constant:50] addTrailingEqualTrailingConstraintWithToView:self.view constant:-50];

    [[self.constraintView addWidthConstraintWithConstant:ZLScaleValue(20)] addHeightConstraintWithConstant:ZLScaleValue(20)];
    
    [view1 removeTopConstraint];
    [view1 addBottomEqualTopConstraintWithToView:self.constraintView constant:0];

    NSLog(@"%f",ZLScaleValue(20));
}

@end
