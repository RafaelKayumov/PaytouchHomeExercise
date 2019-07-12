//
//  DetailsViewController.h
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController

@property (nonatomic, strong) id interactor;
@property (readonly, weak) WKWebView *webView;

@end

NS_ASSUME_NONNULL_END
