//
//  XCTest+Stubs.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <XCTest/XCTest.h>

NS_ASSUME_NONNULL_BEGIN

@interface XCTest (Stubs)

- (void)stubNetworkingWithDataBundle:(NSBundle *)bundle;
- (void)disableNetworkingStubs;

@end

NS_ASSUME_NONNULL_END
