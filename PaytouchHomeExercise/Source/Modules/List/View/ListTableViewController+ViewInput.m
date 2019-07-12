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

- (void)setRefreshingDisplayed:(BOOL)displayed {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        if (displayed) {
            [self.refreshControl beginRefreshing];
        } else {
            [self.refreshControl endRefreshing];
        }
    });
}

@end
