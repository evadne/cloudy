//
//  CLDataProvider+Registry.h
//  cloudy
//
//  Created by Evadne Wu on 6/27/12.
//
//

#import "CLDataProvider.h"

@interface CLDataProvider (Registry)

+ (void) setDataProvider:(CLDataProvider *)provider forName:(NSString *)name;
+ (CLDataProvider *) dataProviderForName:(NSString *)name;
+ (NSArray *) dataProviderNames;

@end
