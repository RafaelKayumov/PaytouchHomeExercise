//
//  CoreDataStack.m
//  CacheTracker
//
//  Created by Alexandr on 24.02.16.
//  Copyright © 2016 Aliksandr Kantsevoi. All rights reserved.
//

#import "CoreDataStack.h"
#import "NSBundle+Additions.h"

@interface CoreDataStack()

@property (nonatomic, strong) NSPersistentContainer *container;
@property (nonatomic, strong) NSManagedObjectContext *backgroundContext;

@end

@implementation CoreDataStack

- (NSManagedObjectContext *)backgroundContext {
    if (!_backgroundContext) {
        _backgroundContext = [self.container newBackgroundContext];
    }
    return _backgroundContext;
}

- (NSManagedObjectContext *)mainContext {
    return self.container.viewContext;
}

- (NSPersistentContainer *)container {
    if (!_container) {
        _container = [NSPersistentContainer persistentContainerWithName:[NSBundle mainBundle].appName];
        [_container loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
            if (error) {
                NSLog(@"Failed to load store: %@", error);
                abort();
            }

            self.container.viewContext.automaticallyMergesChangesFromParent = YES;
        }];
    }
    return _container;
}

@end
