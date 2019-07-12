//
//  AppAssembly.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CoreDataStack, AppCoordinator;
@protocol ListModuleInput, DetailsModuleInput;

NS_ASSUME_NONNULL_BEGIN

@interface AppAssembly : NSObject

@property (nonatomic, weak) AppCoordinator *coordinator;
@property (nonatomic, weak, readonly) id <ListModuleInput> listModule;
@property (nonatomic, weak, readonly) id <DetailsModuleInput> detailsModule;

- (instancetype)initWithCoreDataStack:(CoreDataStack *)coreDataStack;
- (UIViewController *)assembleListModuleAndReturnView;
- (UIViewController *)assembleDetailsModuleAndReturnView;

@end

NS_ASSUME_NONNULL_END
