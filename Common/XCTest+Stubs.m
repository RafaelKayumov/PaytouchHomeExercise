//
//  XCTest+Stubs.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "XCTest+Stubs.h"
#import <OHHTTPStubs/OHHTTPStubs.h>
#import "OHHTTPStubs+Additions.h"

@implementation XCTest (Stubs)

- (void)stubNetworkingWithDataBundle:(NSBundle *)bundle {
    [OHHTTPStubs stubNetworkingWithDataBundle:bundle];
}

- (void)disableNetworkingStubs {
    [OHHTTPStubs removeAllStubs];
}

@end
