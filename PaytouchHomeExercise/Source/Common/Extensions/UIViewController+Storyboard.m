//
//  UIViewController+Storyboard.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "UIViewController+Storyboard.h"
#import <UIKit/UIKit.h>

@implementation UIViewController (Storyboard)

- (instancetype)instantiateFromStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:NSStringFromClass(self.class) bundle:nil];
    return storyboard.instantiateInitialViewController;
}

@end
