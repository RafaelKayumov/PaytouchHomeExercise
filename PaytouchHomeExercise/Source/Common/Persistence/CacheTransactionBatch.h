//
//  CacheTransactionBatch.h
//  CacheTracker
//
//  Created by Alexandr on 18.02.16.
//  Copyright © 2016 Aliksandr Kantsevoi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CacheTransaction.h"

@interface CacheTransactionBatch : NSObject

- (NSArray<CacheTransaction*> *)updateTransactions;
- (NSArray<CacheTransaction*> *)deleteTransactions;
- (NSArray<CacheTransaction*> *)insertTransactions;
- (void)addTransaction:(CacheTransaction *)transaction;
- (BOOL)isEmpty;

@end
