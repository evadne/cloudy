//
//  CLAppDelegate_iOS.m
//  cloudy
//
//  Created by Evadne Wu on 4/4/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "CLAppDelegate_iOS.h"

#import <Parse/Parse.h>
#import "CLOnboardingViewController.h"

@implementation CLAppDelegate_iOS

@synthesize window;

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	[application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeSound];
	
	[Parse setApplicationId:kParseFrameworkAppID clientKey:kParseFrameworkClientKey];
	
	if (!self.window)
		self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
		
	UIStoryboard *sb = [UIStoryboard storyboardWithName:@"CLStoryboard" bundle:nil];
	
	self.window.backgroundColor = [UIColor blackColor];
	self.window.rootViewController = [sb instantiateInitialViewController];
	
	[self.window makeKeyAndVisible];
	
	if ([CLOnboardingViewController needsOnboarding]) {

		UINavigationController *onboardingNC = [sb instantiateViewControllerWithIdentifier:@"onboardingNavController"];
		
		__weak CLOnboardingViewController *wOnboardingVC = (CLOnboardingViewController *)onboardingNC.topViewController;
		NSParameterAssert([wOnboardingVC isKindOfClass:[CLOnboardingViewController class]]);
		
		wOnboardingVC.onDone = ^ {
			[wOnboardingVC dismissViewControllerAnimated:YES completion:nil];
		};
		
		[self.window.rootViewController presentViewController:onboardingNC animated:NO completion:nil];
		
	}
	
	return YES;
	
}

- (void) application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)newDeviceToken {

	[PFPush storeDeviceToken:newDeviceToken];
	[PFPush subscribeToChannelInBackground:@"" block: ^ (BOOL succeeded, NSError *error) {
		
		if (succeeded) {
			NSLog(@"Successfully subscribed to the broadcast channel.");
		} else {
			NSLog(@"Failed to subscribe to the broadcast channel.");
		}
		
	}];

}

- (void) application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {

	NSLog(@"%s %@ %@", __PRETTY_FUNCTION__, application, error);

}

- (void) application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {

	//	Heh

	[PFPush handlePush:userInfo];

}

@end
