/*
 * MyTermColors, a SIMBL plugin to change Terminal.app's colors
 * Copyright (C) 2009 Hugo Camboulive <hugo.camboulive AT gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This plugin is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "MyTTProfile.h"
#import "MyTermColors.h"
#import "MyColors.h"

@implementation TTProfile (MyTerm)

/**
 * Set the value for a vt*Color
 * NB : no need to swizzle this since its not overriden in the class
 */
- (void)setValue2:(id)value forKey:(id)key
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
- (id)valueForKey2:(id)key
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
		return [MyColors performSelector: NSSelectorFromString(key)];
	}
	return [self valueForUndefinedKey2: key];
}

@end
