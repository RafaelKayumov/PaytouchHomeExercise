//
//  CacheTrackerProtocol.h
//  CacheTracker
//
//  Created by Alexandr on 18.02.16.
//  Copyright © 2016 Aliksandr Kantsevoi. All rights reserved.
//

#import "CacheTransactionBatch.h"
#import "CacheRequest.h"

@protocol CacheTrackerProtocol <NSObject>

- (void)setupWithCacheRequest:(CacheRequest *)cacheRequest forContext:(NSManagedObjectContext*)context;
- (CacheTransactionBatch *)obtainTransactionBatchFromCurrentCache;

@end

@protocol CacheTrackerDelegate <NSObject>

- (void)didProcessTransactionBatch:(CacheTransactionBatch *)transactionBatch;

@end
