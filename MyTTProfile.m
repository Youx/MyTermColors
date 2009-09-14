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

@implementation NSObject (MyTTProfile)

- (id)initWithProfile2:(id)arg1
{
	id def = [self initWithProfile2:arg1];

	/* Initialize the colors correctly */
	[def setValue: [arg1 valueForKey:@"vtBlackColor"] forKey: @"vtBlackColor"];
	[def setValue: [arg1 valueForKey:@"vtRedColor"]	forKey: @"vtRedColor"];
	[def setValue: [arg1 valueForKey:@"vtGreenColor"] forKey: @"vtGreenColor"];
	[def setValue: [arg1 valueForKey:@"vtYellowColor"] forKey: @"vtYellowColor"];
	[def setValue: [arg1 valueForKey:@"vtBlueColor"] forKey: @"vtBlueColor"];
	[def setValue: [arg1 valueForKey:@"vtMagentaColor"] forKey: @"vtMagentaColor"];
	[def setValue: [arg1 valueForKey:@"vtCyanColor"] forKey: @"vtCyanColor"];
	[def setValue: [arg1 valueForKey:@"vtWhiteColor"] forKey: @"vtWhiteColor"];

	[def setValue: [arg1 valueForKey:@"vtBrightBlackColor"] forKey: @"vtBrightBlackColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightRedColor"] forKey: @"vtBrightRedColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightGreenColor"] forKey: @"vtBrightGreenColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightYellowColor"] forKey: @"vtBrightYellowColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightBlueColor"] forKey: @"vtBrightBlueColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightMagentaColor"] forKey: @"vtBrightMagentaColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightCyanColor"] forKey: @"vtBrightCyanColor"];
	[def setValue: [arg1 valueForKey:@"vtBrightWhiteColor"] forKey: @"vtBrightWhiteColor"];

	return def;
}


/**
 * Set the value for a vt*Color
 * NB : no need to swizzle this since its not overriden in the class
 */
- (void)setValue2:(id)value forKey:(id)key
{
	if ([key hasPrefix: @"vt"] && [key hasSuffix: @"Color"]) {
		[self performSelector: @selector(setScopeValue:forKey:)
			   withObject:[NSArchiver archivedDataWithRootObject:value]
			   withObject:key];
		[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
	} else {
		return [self setValue2: value forKey: key];
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
		d = [self performSelector:@selector(effectiveValueForKey:) withObject:key];
		if (d != nil)
			return [NSUnarchiver unarchiveObjectWithData: d];
		return [self valueForUndefinedKey: key];
	}
	return [self valueForKey2: key];
}

- (id)valueForUndefinedKey2:(id) key
{
	//NSLog(@"Terminal : undefined key");
	if ([key hasPrefix: @"vt"] && [key hasSuffix: @"Color"]) {
		return [MyColors performSelector: NSSelectorFromString(key)];
	}
	return [self valueForUndefinedKey2: key];
}

@end
