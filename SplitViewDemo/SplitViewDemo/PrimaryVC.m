//
//  PrimaryVC.m
//  SplitViewDemo
//
//  Created by Yashwant Phatak on 4/24/17.
//  Copyright © 2017 Oracle. All rights reserved.
//

#import "PrimaryVC.h"

@interface PrimaryVC ()

@end

@implementation PrimaryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.title = @"Master VC";

    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
