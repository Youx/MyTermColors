//
//  MyTermColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTermColors.h"

#import "MyTTProfile.h"
#import "JRSwizzle.h"

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
	/* Do some class posing */
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
