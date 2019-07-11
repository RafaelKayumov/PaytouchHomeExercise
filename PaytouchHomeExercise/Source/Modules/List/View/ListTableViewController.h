//
//  ListTableViewController.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewOutput.h"

@class CacheTransactionBatch;

NS_ASSUME_NONNULL_BEGIN

@interface ListTableViewController : UITableViewController

@property (nonatomic, strong) id <ListViewOutput> output;

- (void)processTransactionBatch:(CacheTransactionBatch *)batch;

@end

NS_ASSUME_NONNULL_END
