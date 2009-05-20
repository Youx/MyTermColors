//
//  MyTermColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTermColors.h"


#import "MyTTView.h"

#import "TTAppPrefsController.h"
#import "TTProfileArrayController.h"
#import "MyTTAppPrefsController.h"
#import "TTProfile.h"
#import "TTView.h"

#import <objc/objc-runtime.h>
#import <objc/objc-class.h>
#import <uuid/uuid.h>

#import "JRSwizzle.h"

@class TTView;

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

	/* Add the new tab */
	plugin->ctl = [TTAppPrefsController sharedPreferencesController];
	ProfileTableViewDelegate *deleg = [[ProfileTableViewDelegate alloc] init: plugin->ctl];
	[plugin->ctl window];			/* Force instanciation of the Controller */
	[plugin->ctl addColorsTab];		/* Add the colors tab */
	[plugin->ctl setProfileTableViewDelegate: deleg];
	//[plugin->ctl addKeysToSave];
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

- (IBAction) setRed: (id)sender
{
	[self->ctl setvtRedColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBRed: (id)sender
{
	[self->ctl setvtBrightRedColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setGreen: (id)sender
{
	[self->ctl setvtGreenColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBGreen: (id)sender
{
	[self->ctl setvtBrightGreenColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setYellow: (id)sender
{
	[self->ctl setvtYellowColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBYellow: (id)sender
{
	[self->ctl setvtBrightYellowColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBlue: (id)sender
{
	[self->ctl setvtBlueColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBBlue: (id)sender
{
	[self->ctl setvtBrightBlueColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setMagenta: (id)sender
{
	[self->ctl setvtMagentaColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBMagenta: (id)sender
{
	[self->ctl setvtBrightMagentaColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setCyan: (id)sender
{
	[self->ctl setvtCyanColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
- (IBAction) setBCyan: (id)sender
{
	[self->ctl setvtBrightCyanColor: [sender color] withProfile: [[[self->ctl profilesController] selectedObjects] objectAtIndex: 0]];
	[MyTermColors redrawWindows]; /* Redraw the main window to update colors */
}
@end
