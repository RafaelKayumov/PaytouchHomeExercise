//
//  ListViewOutput.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 11/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "ViewOutput.h"

@class FlickrObjectPlain;

#ifndef ListViewOutput_h
#define ListViewOutput_h

@protocol ListViewOutput <ViewOutput>

- (void)didSelectPlainModel:(FlickrObjectPlain *)flickrObjectPlain;

@end

#endif /* ListViewOutput_h */
