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
@synthesize doneItem;
@synthesize webView;

+ (BOOL) needsOnboarding {

	return YES;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [self setDoneItem:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleDone:(UIBarButtonItem *)sender {
}
@end
