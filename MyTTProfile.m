//
//  MyTTProfile.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 20/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "MyTTProfile.h"
#import "MyTermColors.h"

@implementation TTProfile (MyTerm)

/**
 * Set the value for a vt*Color
 * NB : no need to swizzle this since its not overriden in the class
 */
- (void)setValue:(id)value forKey:(id)key
{
	if ([key hasPrefix: @"vt"] && [key hasSuffix: @"Color"]) {
		[self setScopeValue:[NSArchiver archivedDataWithRootObject:value] forKey:key];
		[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
	} else {
		return [super setValue: value forKey: key];
	}
}

/**
 * Return the set value for a vt*Color
 * NB : no need to swizzle this since its not overriden in the class
 */
- (id)valueForKey:(id)key
{
	NSData *d = nil;
	if ([key hasPrefix: @"vt"] && [key hasSuffix: @"Color"]) {
		d = [self effectiveValueForKey:key];
		if (d != nil)
			return [NSUnarchiver unarchiveObjectWithData: d];
		return [self valueForUndefinedKey: key];
	}
	return [super valueForKey: key];
}

- (id)valueForUndefinedKey2:(id) key
{
	if ([key hasPrefix: @"vt"] && [key hasSuffix: @"Color"]) {
		return [NSColor performSelector: NSSelectorFromString(key)];
	}
	return [self valueForUndefinedKey2: key];
}

@end
