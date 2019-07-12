//
//  NSURL+Equivalence.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (Equivalence)

- (BOOL)isEquivalent:(NSURL *)URL;

@end

NS_ASSUME_NONNULL_END
