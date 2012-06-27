//
//  CLDataProvider_iTunes.m
//  cloudy
//
//  Created by Evadne Wu on 6/27/12.
//
//

#import "CLDataProvider_iTunes.h"
#import "CLDataProvider+Registry.h"

@interface CLDataProvider_iTunes ()

@property (nonatomic, readwrite, strong) id observer;
- (void) handlePlayerInfo:(NSNotification *)note;

@end

@implementation CLDataProvider_iTunes
@synthesize observer = _observer;

+ (void) load {

	[CLDataProvider setDataProvider:[self new] forName:NSStringFromClass([self class])];

}

- (id) init {

	self = [super init];
	if (!self)
		return nil;
	
	__weak CLDataProvider_iTunes *wSelf = self;
	
	_observer = [[NSDistributedNotificationCenter defaultCenter] addObserverForName:@"com.apple.iTunes.playerInfo" object:nil queue:nil usingBlock:^(NSNotification *note) {
	
		[wSelf handlePlayerInfo:note];
		
	}];
	
	return self;

}

- (void) dealloc {

	[[NSDistributedNotificationCenter defaultCenter] removeObserver:_observer];

}

- (void) handlePlayerInfo:(NSNotification *)note {

	NSLog(@"%@", note);

}

@end
