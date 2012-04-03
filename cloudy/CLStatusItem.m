//
//  CLStatusItem.m
//  cloudy
//
//  Created by Evadne Wu on 4/4/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "CLStatusItem.h"
#import "AppKit+IRAdditions.h"

@implementation CLStatusItem

+ (id) sharedItem {

	static NSStatusItem *item = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{

		item = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
		
		item.title = @"Cloudy";
		item.menu = [CLStatusItemMenu instanceFromNib];
		item.highlightMode = YES;
			
	});
	
	return item;

}

@end


@implementation CLStatusItemMenu

@end
