//
//  CLAppDelegate.m
//  cloudy
//
//  Created by Evadne Wu on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLAppDelegate.h"

@implementation CLAppDelegate
@synthesize window;

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	if (!self.window)
		self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	self.window.backgroundColor = [UIColor blackColor];
	self.window.rootViewController = [[UIStoryboard storyboardWithName:@"CLStoryboard" bundle:nil] instantiateInitialViewController];
	
	[self.window makeKeyAndVisible];
	
	return YES;
	
}

@end
