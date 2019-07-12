//
//  AppDelegate.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 10/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "AppDelegate.h"
#import "AppCoordinator.h"
#import "AppAssembly.h"
#import "CoreDataStack.h"

@interface AppDelegate ()

@property (nonatomic, strong) AppCoordinator *coordinator;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CoreDataStack *coreDataStack = [CoreDataStack new];
    AppAssembly *assembly = [[AppAssembly alloc] initWithCoreDataStack:coreDataStack];
    self.coordinator = [[AppCoordinator alloc] initWithAssembly:assembly];
    assembly.coordinator = self.coordinator;
    [self.coordinator buildUI];
    
    return YES;
}

@end
