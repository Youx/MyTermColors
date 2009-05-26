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

#import "MyTermColors.h"

#import "MyTTProfile.h"
#import "JRSwizzle.h"
#import "MyColors.h"

/**
 * Helper function to localize a string
 */
NSString *_L(NSString *in)
{
	NSBundle *b = [NSBundle bundleForClass: [MyTermColors class]];
	return NSLocalizedStringFromTableInBundle (in, @"Localizable", b, @"");
}


@implementation MyTermColors

/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void) load
{
	MyTermColors* plugin = [MyTermColors sharedInstance];
	NSError *err = nil;
	/* Do some class posing and method swizzling */
	[MyColors poseAsClass: [NSColor class]];
	[TTView jr_swizzleMethod:@selector(colorForANSIColor:) withMethod:@selector(colorForANSIColor2:) error:&err];
	[TTProfile jr_swizzleMethod:@selector(valueForUndefinedKey:) withMethod:@selector(valueForUndefinedKey2:) error:&err];

	/* Add the new tab */
	plugin->ctl = [TTAppPrefsController sharedPreferencesController];
	[plugin->ctl window];			/* Force instanciation of the Controller */
	[plugin->ctl addColorsTab];		/* Add the colors tab */
}

+ (void) redrawWindows
{
	int count = [[NSApp windows] count];
	int i;

	for (i = 0 ; i < count ; i++) {
		[[[[NSApp windows] objectAtIndex: i] contentView] setNeedsDisplay: YES];
	}
}

/**
 * @return the single static instance of the plugin object
 */
+ (MyTermColors*) sharedInstance
{
	static MyTermColors* plugin = nil;
	
	if (plugin == nil)
		plugin = [[MyTermColors alloc] init];
	
	return plugin;
}

/**
 * Returns the profiles controller instance
 */
- (id) profilesController
{
	return [ctl profilesController];
}

@end
