//
//  AppCoordinator.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppAssembly.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator: NSObject

@property (nonatomic, strong, readonly) AppAssembly *assembly;

- (instancetype)initWithAssembly:(AppAssembly *)assembly;
- (void)buildUI;

@end

NS_ASSUME_NONNULL_END
