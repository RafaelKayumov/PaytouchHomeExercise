//
//  ListTableViewController+ViewInput.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ListTableViewController+ViewInput.h"

@implementation ListTableViewController (ViewInput)

- (void)consumeTransactionBatch:(CacheTransactionBatch *)batch {
    [self processTransactionBatch:batch];
}

@end
