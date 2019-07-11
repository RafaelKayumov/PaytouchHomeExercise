//
//  AppCoordinator+SplitViewControllerDelegate.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "AppCoordinator+SplitViewControllerDelegate.h"

@implementation AppCoordinator (SplitViewControllerDelegate)

- (BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController {
    return true;
}

@end
