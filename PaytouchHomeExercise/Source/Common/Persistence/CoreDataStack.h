//
//  CoreDataStack.h
//  CacheTracker
//
//  Created by Alexandr on 24.02.16.
//  Copyright © 2016 Aliksandr Kantsevoi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataStack : NSObject

@property (nonatomic, readonly) NSManagedObjectContext *mainContext;
@property (nonatomic, readonly) NSManagedObjectContext *backgroundContext;

@end
