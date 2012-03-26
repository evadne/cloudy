//
//  CLAppDelegate.m
//  cloudy
//
//  Created by Evadne Wu on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Parse/Parse.h>

#import "CLAppDelegate.h"

@implementation CLAppDelegate
@synthesize window;

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	[application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeSound];
	
	[Parse setApplicationId:@"aOcVK8sIpI6I2WksHgGaVluNyxf5pW4bsoHjdu7F" clientKey:@"CPTCmulUA8SaWeQoQc7ADoHBan1IN3HJnj9Kfey1"];
	
	if (!self.window)
		self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	self.window.backgroundColor = [UIColor blackColor];
	self.window.rootViewController = [[UIStoryboard storyboardWithName:@"CLStoryboard" bundle:nil] instantiateInitialViewController];
	
	[self.window makeKeyAndVisible];
	
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
