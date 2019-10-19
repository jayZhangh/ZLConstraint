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
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    [[[[[view1 addWidthConstraintWithConstant:20] addHeightConstraintWithConstant:50] addLeadingEqualLeadingConstraintWithToView:self.view constant:50] addTopEqualTopConstraintWithToView:self.view constant:50] addTrailingEqualTrailingConstraintWithToView:self.view constant:-50];
    
    [self.constraintView addWidthConstraintWithConstant:ZLScaleValue(20)];
    
//    [self addConstraintWithSuperview:self view:self viewLayoutAttribute:NSLayoutAttributeWidth toView:nil toViewLayoutAttribute:NSLayoutAttributeNotAnAttribute constant:constant];
//    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.constraintView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.constraintView attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:ZLScaleValue(20.0)];
//    [self.constraintView addConstraint:constraint];
}


@end
