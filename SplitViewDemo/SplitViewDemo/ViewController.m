//
//  ViewController.m
//  SplitViewDemo
//
//  Created by Yashwant Phatak on 4/24/17.
//  Copyright © 2017 Oracle. All rights reserved.
//

#import "ViewController.h"
#import "PrimaryVC.h"
#import "DetailVC.h"

@interface ViewController () <UISplitViewControllerDelegate>

@property (nonatomic) UISplitViewController *splitVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"Split View Demo";
    
    PrimaryVC *primaryVC = [[PrimaryVC alloc] init];
    UINavigationController *masterNav = [[UINavigationController alloc] initWithRootViewController:primaryVC];
    
    DetailVC *detailVC = [[DetailVC alloc] init];
    UINavigationController *detailNav = [[UINavigationController alloc] initWithRootViewController:detailVC];
    
    self.splitVC = ({
        UISplitViewController *s = [UISplitViewController new];
        
        s.viewControllers = @[masterNav, detailNav];
        s.preferredPrimaryColumnWidthFraction = 0.45;
        s.maximumPrimaryColumnWidth = 1000;
        s.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
        s.delegate = self;
        s.view.backgroundColor = [UIColor clearColor];
        s;
    });
    
    [self addSplitVC];
}

-(void)addSplitVC {
    [self willMoveToParentViewController:self.splitVC];
    [self addChildViewController:self.splitVC];
    [self.view addSubview:self.splitVC.view];
    [self.splitVC didMoveToParentViewController:self];
    self.view.window.rootViewController = self.splitVC;
}

-(void)removeSplitVC {
    [self.splitVC willMoveToParentViewController:nil];
    [self.splitVC.view removeFromSuperview];
    [self.splitVC removeFromParentViewController];
}

@end
