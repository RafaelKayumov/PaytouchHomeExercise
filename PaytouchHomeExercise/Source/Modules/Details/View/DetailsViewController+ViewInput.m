//
//  DetailsViewController+ViewInput.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "DetailsViewController+ViewInput.h"

@implementation DetailsViewController (ViewInput)

- (void)displayHTMLString:(NSString *)htmlString {
    [self.webView loadHTMLString:htmlString baseURL:nil];
}

@end
