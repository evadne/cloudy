//
//  CLItemsViewController.m
//  cloudy
//
//  Created by Evadne Wu on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLItemsViewController.h"

@interface CLItemsViewController ()

@end

@implementation CLItemsViewController
@synthesize actionBarButtonItem;
@synthesize refreshBarButtonItem;
@synthesize addBarButtonItem;

- (void) viewDidLoad {

	[super viewDidLoad];
	
	self.title = NSLocalizedString(@"ITEMS_VIEW_CONTROLLER_TITLE", @"Items View Controller Title");
	
	NSURL *ubiquityContainerURL = [[NSFileManager defaultManager] URLForUbiquityContainerIdentifier:kCLUbiquityContainerIdentifier];
	
	if (!ubiquityContainerURL) {
	
		//[[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:<#(NSString *)#> otherButtonTitles:<#(NSString *), ...#>, nil]
	
	}
	
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
	
}

- (void)viewDidUnload {
	[self setAddBarButtonItem:nil];
	[self setRefreshBarButtonItem:nil];
	[self setActionBarButtonItem:nil];
	[super viewDidUnload];
}
- (IBAction)handleAddBarButtonItemTap:(UIBarButtonItem *)sender {
}
- (IBAction)handleRefreshBarButtonItemTap:(UIBarButtonItem *)sender {
}
- (IBAction)handleActionBarButtonItemTap:(UIBarButtonItem *)sender {
}

@end
