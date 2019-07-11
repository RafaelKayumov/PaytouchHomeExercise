//
//  ListTableViewController.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ListTableViewController.h"
#import "CacheTransaction.h"
#import "CacheTransactionBatch.h"
#import "FlickrObjectPlain.h"

@interface ListTableViewController ()

@property (nonatomic, strong) NSMutableArray<FlickrObjectPlain *> *plainObjects;

@end

@implementation ListTableViewController

#pragma mark - Properties

- (NSMutableArray<FlickrObjectPlain *> *)plainObjects {
    if (!_plainObjects) {
        _plainObjects = @[].mutableCopy;
    }

    return _plainObjects;
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];

    [self.output onViewReady];
}

#pragma mark - Methods

- (void)processTransactionBatch:(CacheTransactionBatch*)batch {
    [self.tableView beginUpdates];

    NSMutableArray<NSIndexPath*>* updateRows = [NSMutableArray new];
    NSMutableArray<NSIndexPath*>* deleteRows = [NSMutableArray new];
    NSMutableArray<NSIndexPath*>* insertRows = [NSMutableArray new];

    for (CacheTransaction* transaction in batch.updateTransactions) {
        [self.plainObjects replaceObjectAtIndex:transaction.oldIndexPath.row withObject:transaction.object];
        [updateRows addObject:transaction.oldIndexPath];
    }

    for (CacheTransaction* transaction in batch.deleteTransactions) {
        [self.plainObjects removeObjectAtIndex:transaction.oldIndexPath.row];
        [deleteRows addObject:transaction.oldIndexPath];
    }

    for (CacheTransaction* transaction in batch.insertTransactions) {
        [self.plainObjects insertObject:transaction.object atIndex:transaction.updatedIndexPath.row];
        [insertRows addObject:transaction.updatedIndexPath];
    }

    [self.tableView reloadRowsAtIndexPaths:updateRows withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView deleteRowsAtIndexPaths:deleteRows withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView insertRowsAtIndexPaths:insertRows withRowAnimation:UITableViewRowAnimationFade];

    [self.tableView endUpdates];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.plainObjects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.plainObjects[indexPath.row].title;
    return cell;
}

@end
