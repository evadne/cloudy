//
//  main.m
//  cloudy
//
//  Created by Evadne Wu on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLAppDelegate.h"

int main(int argc, char *argv[]) {
	@autoreleasepool {
	#if TARGET_OS_IPHONE
		return UIApplicationMain(argc, argv, nil, NSStringFromClass([CLAppDelegate class]));
	#else
		return NSApplicationMain(argc, (const char **)argv);
	#endif
	}
}

