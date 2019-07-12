//
//  PaytouchHomeExerciseTests.m
//  PaytouchHomeExerciseTests
//
//  Created by Rafael Kayumov on 10/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NetworkingTransport.h"
#import "FlickrObjectsLoadingService.h"
#import <OHHTTPStubs/OHHTTPStubs.h>
#import "FlickrObjectsLoadingRoute.h"
#import "NSURL+Equivalence.h"
#import "XCTest+Stubs.h"
#import "TestingConstants.h"

@interface PaytouchHomeExerciseTests : XCTestCase

@end

@implementation PaytouchHomeExerciseTests

- (void)setUp {
    [self stubNetworkingWithDataBundle:[NSBundle bundleForClass:self.class]];
}

- (void)tearDown {
    [self disableNetworkingStubs];
}

- (void)testFlickrObjectsService {
    NSURLSession *session = [NSURLSession sessionWithConfiguration: NSURLSessionConfiguration.defaultSessionConfiguration];
    NetworkingTransport *transport = [[NetworkingTransport alloc] initWithSession:session];
    FlickrObjectsLoadingService *objectsLoadingService = [[FlickrObjectsLoadingService alloc] initWithNetworkingTransport:transport];

    XCTestExpectation *objectsExpectation = [[XCTestExpectation alloc] initWithDescription:@"Fetch object list"];
    NSString *titleKey = @"title";
    [objectsLoadingService loadObjectsWithCompletion:^(NSArray<NSDictionary *> * _Nullable objectDictionaries, NSError * _Nullable error) {
        XCTAssertTrue([objectDictionaries[0][titleKey] isEqualToString:kFirstObjectTitle]);
        XCTAssertTrue([objectDictionaries[1][titleKey] isEqualToString:kSecondObjectTitle]);
        XCTAssertTrue([objectDictionaries[2][titleKey] isEqualToString:kThirdObjectTitle]);
        [objectsExpectation fulfill];
    }];

    [self waitForExpectations:@[objectsExpectation] timeout:5];
}

@end
