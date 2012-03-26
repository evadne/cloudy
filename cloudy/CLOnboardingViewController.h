//
//  CLOnboardingViewController.h
//  cloudy
//
//  Created by Evadne Wu on 3/27/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLOnboardingViewController : UIViewController

+ (BOOL) needsOnboarding;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneItem;

- (IBAction) handleDone:(UIBarButtonItem *)sender;

@end
