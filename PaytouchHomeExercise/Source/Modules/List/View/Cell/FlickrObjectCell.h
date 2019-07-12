//
//  FlickrObjectCell.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlickrObjectPlain;

NS_ASSUME_NONNULL_BEGIN

@interface FlickrObjectCell : UITableViewCell

- (void)configureWithFlickrPlainObject:(FlickrObjectPlain *)flickrObjectPlain;

@end

NS_ASSUME_NONNULL_END
