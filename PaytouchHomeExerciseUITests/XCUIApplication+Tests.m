//
//  XCUIApplication+Tests.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "XCUIApplication+Tests.h"
#import <OHHTTPStubs/OHHTTPStubs.h>
#import <XCTest/XCTest.h>
#import "TestingConstants.h"

@implementation XCUIApplication (Tests)

- (void)launchWithTestStubs {
    self.launchArguments = [self.launchArguments arrayByAddingObjectsFromArray:@[kDisableAnimationRequired, kNetworkingStubRequired]];
    [self launch];
}

@end
