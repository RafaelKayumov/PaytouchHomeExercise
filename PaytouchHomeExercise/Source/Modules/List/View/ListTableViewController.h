//
//  ListTableViewController.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewOutput.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListTableViewController : UITableViewController

@property (nonatomic, strong) id <ListViewOutput> output;

@end

NS_ASSUME_NONNULL_END
