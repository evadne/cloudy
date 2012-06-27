//
//  CLDataProvider+Registry.m
//  cloudy
//
//  Created by Evadne Wu on 6/27/12.
//
//

#import "CLDataProvider+Registry.h"

@implementation CLDataProvider (Registry)

+ (NSMutableDictionary *) namesToProviders {

	static NSMutableDictionary *dictionary = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
    
		dictionary = [NSMutableDictionary dictionary];
		
	});
	
	return dictionary;

}

+ (void) setDataProvider:(CLDataProvider *)provider forName:(NSString *)name {

	[[self namesToProviders] setObject:provider forKey:name];

}

+ (CLDataProvider *) dataProviderForName:(NSString *)name {

	return (CLDataProvider *)[[self namesToProviders] objectForKey:name];

}

+ (NSArray *) dataProviderNames {

	return [[self namesToProviders] allKeys];

}

@end
