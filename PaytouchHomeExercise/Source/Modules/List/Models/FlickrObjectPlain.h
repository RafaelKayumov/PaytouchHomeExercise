//
//  FlickrObjectPlain.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlickrObjectPlain : NSObject

@property (nullable, nonatomic, copy) NSURL *mediaLink;
@property (nullable, nonatomic, copy) NSData *media;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSDate *dateTaken;
@property (nullable, nonatomic, copy) NSString *descriptionString;
@property (nullable, nonatomic, copy) NSURL *link;

@end

NS_ASSUME_NONNULL_END
