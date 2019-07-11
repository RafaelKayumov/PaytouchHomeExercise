//
//  AppAssembly.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CoreDataStack;

NS_ASSUME_NONNULL_BEGIN

@interface AppAssembly : NSObject

- (instancetype)initWithCoreDataStack:(CoreDataStack *)coreDataStack;
- (UIViewController *)assembleListModuleAndReturnView;

@end

NS_ASSUME_NONNULL_END
