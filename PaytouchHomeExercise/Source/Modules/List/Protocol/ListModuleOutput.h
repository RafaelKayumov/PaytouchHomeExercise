//
//  ListModuleOutput.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

@class FlickrObjectPlain;

#ifndef ListModuleOutput_h
#define ListModuleOutput_h

@protocol ListModuleOutput

- (void)onFlickrObjectSelection:(FlickrObjectPlain *)flickrObjectPlain;

@end

#endif /* ListModuleOutput_h */
