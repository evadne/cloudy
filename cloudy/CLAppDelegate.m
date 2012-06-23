//
//  CLAppDelegate.m
//  cloudy
//
//  Created by Evadne Wu on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLAppDelegate.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
	#import "CLAppDelegate_iOS.h"
#else
	#import "CLAppDelegate_OSX.h"
#endif


@implementation CLAppDelegate

+ (id) alloc {

  if ([self isEqual:[CLAppDelegate class]])
    return [[self preferredClusterClass] alloc];
  
  return [super alloc];
  
}

+ (id) allocWithZone:(NSZone *)zone {
  
  if ([self isEqual:[CLAppDelegate class]])
    return [[self preferredClusterClass] allocWithZone:zone];

  return [super allocWithZone:zone];
  
}

+ (Class) preferredClusterClass {

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
  return [CLAppDelegate_iOS class];
#else
	return [CLAppDelegate_OSX class];
#endif

}

@end
