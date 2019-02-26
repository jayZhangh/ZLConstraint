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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    [[[[[view1 addWidthConstraintWithConstant:20] addHeightConstraintWithConstant:50] addLeadingEqualLeadingConstraintWithToView:self.view constant:50] addTopEqualTopConstraintWithToView:self.view constant:50] addTrailingEqualTrailingConstraintWithToView:self.view constant:-50];
}


@end
