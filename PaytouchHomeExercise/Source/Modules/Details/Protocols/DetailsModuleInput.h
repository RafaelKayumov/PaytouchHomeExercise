//
//  DetailsModuleInput.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#ifndef DetailsModuleInput_h
#define DetailsModuleInput_h

@class FlickrObjectPlain;

@protocol DetailsModuleInput <NSObject>

- (void)consumeFlickrObjectPlain:(FlickrObjectPlain *)flickrObjectPlain;

@end

#endif /* DetailsModuleInput_h */
