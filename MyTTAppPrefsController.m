//
//  MyTTAppPrefsController.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 24/04/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "MyTTAppPrefsController.h"
#import "MyTermColors.h"
#import "MyColors.h"

@implementation MyTTAppPrefsController

- (id)init
{
	TTAppPrefsController *res = [super init];
	
	return res;
}

- (void)addColorsTab
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSTabViewItem *settings;
	NSTabViewItem *text_colors_tabview;
	NSTabView *profile_settings;
	NSView *settings_view;
	
	//NSRunAlertPanel(@"title", @"format", @"button1", @"button2", nil);
	
	if (![NSBundle loadNibNamed:@"colors_selector" owner:bundle]) {
		NSLog(@"Error loading Nib for MyTermColors!");
	} else {
		/* Get the "settings" tab */
		settings = [_tabView tabViewItemAtIndex: 1];
		settings_view = [settings view];
		/* Get the per-profile settings tabview */
		profile_settings = [[settings_view subviews] objectAtIndex:0];
		text_colors_tabview = [[NSTabViewItem alloc] init];
		[text_colors_tabview setLabel: @"Colors"];
		[text_colors_tabview setView: bundle->colorsView];
		[profile_settings addTabViewItem: text_colors_tabview];
	}
}

- (void) setDefaultColors
{
/*	vtRedColor = [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0];
	vtBrightRedColor = [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0];
	vtGreenColor = [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0];
	vtBrightRedColor = [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0];
	vtYellowColor = [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0];
	vtBrightYellowColor = [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0];
	vtBlueColor = [NSColor colorWithDeviceRed: 0.31 green: 0.51 blue: 0.70 alpha: 1.0];
	vtBrightBlueColor = [NSColor colorWithDeviceRed: 0.39 green: 0.58 blue: 0.76 alpha: 1.0];
	vtMagentaColor = [NSColor colorWithDeviceRed: 0.72 green: 0.505 blue: 0.675 alpha: 1.0];
	vtBrightMagentaColor = [NSColor colorWithDeviceRed: 0.784 green: 0.4 blue: 0.705 alpha: 1.0];
	vtCyanColor = [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0];
	vtBrightCyanColor = [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0];*/
}

- (void) setColorWells
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSColorWell *well;
	/* set red */
	well = [[bundle->colorsView subviews] objectAtIndex: 23];
	[well setColor: [MyColors vtRedColor]];
	/* set bright red */
	well = [[bundle->colorsView subviews] objectAtIndex: 11];
	[well setColor: [MyColors vtBrightRedColor]];
	/* set green */
	well = [[bundle->colorsView subviews] objectAtIndex: 22];
	[well setColor: [MyColors vtGreenColor]];
	/* set bright green */
	well = [[bundle->colorsView subviews] objectAtIndex: 10];
	[well setColor: [MyColors vtBrightGreenColor]];
	/* set yellow */
	well = [[bundle->colorsView subviews] objectAtIndex: 21];
	[well setColor: [MyColors vtYellowColor]];
	/* set bright yellow */
	well = [[bundle->colorsView subviews] objectAtIndex: 9];
	[well setColor: [MyColors vtBrightYellowColor]];
	/* set blue */
	well = [[bundle->colorsView subviews] objectAtIndex: 20];
	[well setColor: [MyColors vtBlueColor]];
	/* set bright blue */
	well = [[bundle->colorsView subviews] objectAtIndex: 8];
	[well setColor: [MyColors vtBrightBlueColor]];
	/* set magenta */
	well = [[bundle->colorsView subviews] objectAtIndex: 19];
	[well setColor: [MyColors vtMagentaColor]];
	/* set bright magenta */
	well = [[bundle->colorsView subviews] objectAtIndex: 7];
	[well setColor: [MyColors vtBrightMagentaColor]];
	/* set cyan */
	well = [[bundle->colorsView subviews] objectAtIndex: 13];
	[well setColor: [MyColors vtCyanColor]];
	/* set bright cyan */
	well = [[bundle->colorsView subviews] objectAtIndex: 1];
	[well setColor: [MyColors vtBrightCyanColor]];
}

/* White setter and getter */
+ (id)vtWhiteColor {
	return [NSColor colorWithDeviceRed: 0.94 green: 0.94 blue: 0.94 alpha: 1.0];
}
+ (id)vtBrightWhiteColor {
	return [NSColor colorWithDeviceRed: 1.0 green: 1.0 blue: 1.0 alpha: 1.0];
}

@end
