//
//  ListViewInput.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

@class CacheTransactionBatch;

#ifndef ListViewInput_h
#define ListViewInput_h

@protocol ListViewInput

- (void)consumeTransactionBatch:(CacheTransactionBatch *)batch;

@end

#endif /* ListViewInput_h */
