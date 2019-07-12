//
//  FlickrObjectCell.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "FlickrObjectCell.h"
#import "FlickrObjectPlain.h"
#import "NSDate+Formatting.h"
#import "NSString+Additions.h"
#import <SDWebImage/SDWebImage.h>

@interface FlickrObjectCell ()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *subtitleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *mediaImageView;

@end

@implementation FlickrObjectCell

- (void)configureWithFlickrPlainObject:(FlickrObjectPlain *)flickrObjectPlain {
    self.titleLabel.text = flickrObjectPlain.title;
    self.subtitleLabel.text = [flickrObjectPlain.dateTaken detailsString];

    self.titleLabel.hidden = ![self.titleLabel.text hasVisibleSymbols];
    self.subtitleLabel.hidden = ![self.subtitleLabel.text hasVisibleSymbols];

    UIImage *placeholderImage = [UIImage imageNamed:@"ImagePlaceholder"];
    if (flickrObjectPlain.mediaLink) {
        [self.mediaImageView sd_setImageWithURL:flickrObjectPlain.mediaLink placeholderImage:placeholderImage];
    } else {
        self.mediaImageView.image = placeholderImage;
    }
}

- (void)prepareForReuse {
    [super prepareForReuse];
}

@end
