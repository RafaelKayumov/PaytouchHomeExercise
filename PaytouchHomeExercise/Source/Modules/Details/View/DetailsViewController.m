//
//  DetailsViewController.m
//  PaytouchHomeExercise
//
//  Created by Rafael Kayumov on 12/07/2019.
//  Copyright © 2019 Rafael Kayumov. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@property (nonatomic, weak) IBOutlet WKWebView *webView;
@property (nonatomic, weak) UIRefreshControl *refreshControl;

@end

@implementation DetailsViewController

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];

    self.webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAlways;
}

@end
