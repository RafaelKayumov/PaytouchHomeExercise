//
//  CacheTransaction.h
//  CacheTracker
//
//  Created by Alexandr on 18.02.16.
//  Copyright © 2016 Aliksandr Kantsevoi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CacheTransaction : NSObject

@property (strong, nonatomic, readonly) id object;
@property (copy, nonatomic, readonly) NSIndexPath *oldIndexPath;
@property (copy, nonatomic, readonly) NSIndexPath *updatedIndexPath;
@property (copy, nonatomic, readonly) NSString *objectType;
@property (assign, nonatomic, readonly) NSFetchedResultsChangeType changeType;

+ (instancetype)transactionWithObject:(id)object
                         oldIndexPath:(NSIndexPath *)oldIndexPath
                     updatedIndexPath:(NSIndexPath *)updatedIndexPath
                           objectType:(NSString *)objectType
                           changeType:(NSUInteger)changeType;

@end
