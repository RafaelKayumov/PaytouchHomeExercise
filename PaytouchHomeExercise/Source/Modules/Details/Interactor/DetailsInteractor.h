//
//  DetailsInteractor.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DetailsViewInput;
@class FlickrObjectPlain;

NS_ASSUME_NONNULL_BEGIN

@interface DetailsInteractor : NSObject

- (instancetype)initWithView:(id<DetailsViewInput>)detailsViewInput;
- (void)displayFlickrObjectPlainDetails:(FlickrObjectPlain *)flickrObjectPlain;

@end

NS_ASSUME_NONNULL_END
