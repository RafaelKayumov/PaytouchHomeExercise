//
//  AppCoordinator.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppCoordinator.h"
#import "AppCoordinator+SplitViewControllerDelegate.h"

@interface AppCoordinator()

@property (nonatomic, strong) AppAssembly *assembly;

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UISplitViewController *splitViewController;

@end

@implementation AppCoordinator

- (instancetype)initWithAssembly:(AppAssembly *)assembly {
    if (self = [super init]) {
        _assembly = assembly;
    }

    return self;
}

- (void)buildUI {
    UIWindow *window = [UIWindow new];
    window.backgroundColor = [UIColor clearColor];

    UIViewController *listModuleView = [self prepareListModuleView];

    UISplitViewController *splitViewController = [UISplitViewController new];
    splitViewController.viewControllers = @[listModuleView, [UIViewController new]];
    splitViewController.delegate = self;

    window.rootViewController = splitViewController;
    [window makeKeyAndVisible];

    self.splitViewController = splitViewController;
    self.window = window;
}

#pragma mark - Private

- (UIViewController *)prepareListModuleView {
    return [self.assembly assembleListModuleAndReturnView];
}

@end
