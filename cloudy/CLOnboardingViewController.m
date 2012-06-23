//
//  CLOnboardingViewController.m
//  cloudy
//
//  Created by Evadne Wu on 3/27/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "CLOnboardingViewController.h"

@interface CLOnboardingViewController ()

@end

@implementation CLOnboardingViewController
@synthesize doneItem, onDone;
@synthesize webView;

+ (BOOL) needsOnboarding {

	return YES;

}

- (void) viewDidUnload {
	
	[self setWebView:nil];
	[self setDoneItem:nil];
	[super viewDidUnload];
	
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
	
}

- (IBAction) handleDone:(UIBarButtonItem *)sender {

	if (self.onDone)
		self.onDone();

}
@end
