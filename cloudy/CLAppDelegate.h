//
//  CLAppDelegate.h
//  cloudy
//
//  Created by Evadne Wu on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
	#import <UIKit/UIKit.h>
	#define CLAppDelegateSuperClass UIResponder
#else
	#import <Cocoa/Cocoa.h>
	#define CLAppDelegateSuperClass NSResponder
#endif

@interface CLAppDelegate : CLAppDelegateSuperClass

@end
