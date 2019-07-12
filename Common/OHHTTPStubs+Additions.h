//
//  OHHTTPStubs+Additions.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <OHHTTPStubs/OHHTTPStubs.h>

NS_ASSUME_NONNULL_BEGIN

@interface OHHTTPStubs (Additions)

+ (void)stubNetworkingWithDataBundle:(NSBundle *)bundle;

@end

NS_ASSUME_NONNULL_END
