//
//  CLAppDelegate_OSX.m
//  cloudy-OSX
//
//  Created by Evadne Wu on 4/4/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "CLAppDelegate_OSX.h"
#import "CLStatusItem.h"
#import <IRFoundationsX/IRFoundationsX.h>


@interface CLAppDelegate_OSX ()

@property (strong, readwrite) NSStatusItem *statusItem;

@end

@implementation CLAppDelegate_OSX

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification {

	self.statusItem = [CLStatusItem sharedItem];
		
}

@end
