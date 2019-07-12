//
//  PaytouchHomeExerciseUITests.m
//  PaytouchHomeExerciseUITests
//
//  Created by Rafael Kayumov on 10/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OHHTTPStubs/OHHTTPStubs.h>
#import "FlickrObjectsLoadingRoute.h"
#import "NSURL+Equivalence.h"
#import "XCTest+Stubs.h"
#import "XCUIApplication+Tests.h"
#import "TestingConstants.h"

@interface PaytouchHomeExerciseUITests : XCTestCase

@end

@implementation PaytouchHomeExerciseUITests

- (void)setUp {
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launchWithTestStubs];
}

- (void)tearDown {
}

- (void)testDisplayedData {
    XCUIApplication *application = [[XCUIApplication alloc] init];

    XCUIElement *table = application.tables[kObjectsTableAccessibilityId];

    XCUIElement *firstObjectCell = [table.cells elementBoundByIndex:0];
    XCUIElement *secondObjectCell = [table.cells elementBoundByIndex:1];
    XCUIElement *thirdObjectCell = [table.cells elementBoundByIndex:2];

    XCUIElement *firstObjectTitle = firstObjectCell.staticTexts[kFirstObjectTitle];
    XCUIElement *secondObjectTitle = secondObjectCell.staticTexts[kSecondObjectTitle];
    XCUIElement *thirdObjectTitle = thirdObjectCell.staticTexts[kThirdObjectTitle];

    NSPredicate *objectDisplayed = [NSPredicate predicateWithFormat:@"exists == true"];

    XCTestExpectation *firstObjectExistenceExpectation = [self expectationForPredicate:objectDisplayed evaluatedWithObject:firstObjectTitle handler:nil];
    XCTestExpectation *secondObjectExistenceExpectation = [self expectationForPredicate:objectDisplayed evaluatedWithObject:secondObjectTitle handler:nil];
    XCTestExpectation *thirdObjectExistenceExpectation = [self expectationForPredicate:objectDisplayed evaluatedWithObject:thirdObjectTitle handler:nil];

    [self waitForExpectations:@[firstObjectExistenceExpectation, secondObjectExistenceExpectation, thirdObjectExistenceExpectation] timeout:5];

    [firstObjectCell tap];

    XCUIElement *firstObjectDescription = application.staticTexts[kFirstObjectDescription];
    XCTestExpectation *firstObjectDescriptionExpectation = [self expectationForPredicate:objectDisplayed evaluatedWithObject:firstObjectDescription handler:nil];

    [self waitForExpectations:@[firstObjectDescriptionExpectation] timeout:3];
}

@end
