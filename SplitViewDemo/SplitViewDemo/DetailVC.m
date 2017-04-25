//
//  SecondaryVC.m
//  SplitViewDemo
//
//  Created by Yashwant Phatak on 4/24/17.
//  Copyright © 2017 Oracle. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    self.title = @"Detail VC";

    self.view.backgroundColor = [UIColor lightGrayColor];
}

@end
