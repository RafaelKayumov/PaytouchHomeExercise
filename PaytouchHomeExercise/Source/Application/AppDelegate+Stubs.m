//
//  AppDelegate+Stubs.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "AppDelegate+Stubs.h"
#import "TestingConstants.h"
#import "OHHTTPStubs+Additions.h"

@implementation AppDelegate (Stubs)

- (void)applyNetworkingStubsIfNeeded {
    if ([NSProcessInfo.processInfo.arguments containsObject:kNetworkingStubRequired]) {
        [OHHTTPStubs stubNetworkingWithDataBundle:[NSBundle mainBundle]];
    }
}

- (void)disableAnimationsIfNeeded {
    if ([NSProcessInfo.processInfo.arguments containsObject:kDisableAnimationRequired]) {
        [UIView setAnimationsEnabled:NO];
    }
}

@end
