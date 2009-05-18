//
//  MyTTAppPrefsController.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 24/04/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "MyTTAppPrefsController.h"
#import "MyTermColors.h"
#import "MyTTProfile.h"
#import "ProfileTableViewDelegate.h"

@implementation MyTTAppPrefsController

- (id)init
{
	TTAppPrefsController *res = [super init];
	
	return res;
}

- (void)setProfileTableViewDelegate: (id)delegate
{
	if ([_profilesTableView delegate] != nil)
		NSRunAlertPanel(@"Zut", @"Delegate existe déja!", @"Fuck", nil, nil);
	else
		[_profilesTableView setDelegate: delegate];
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

- (void) setColorWells: (MyTTProfile *)p
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSColorWell *well;
	NSBox *normalBox, *brightBox;

	brightBox = [[[bundle->colorsView subviews] objectAtIndex: 0] contentView];
	normalBox = [[[bundle->colorsView subviews] objectAtIndex: 1] contentView];

	/* set red */
	well = [[normalBox subviews] objectAtIndex: 0];
	[well setColor: [p vtRedColor]];
	/* set bright red */
	well = [[brightBox subviews] objectAtIndex: 0];
	[well setColor: [p vtBrightRedColor]];
	/* set green */
	well = [[normalBox subviews] objectAtIndex: 1];
	[well setColor: [p vtGreenColor]];
	/* set bright green */
	well = [[brightBox subviews] objectAtIndex: 1];
	[well setColor: [p vtBrightGreenColor]];
	/* set yellow */
	well = [[normalBox subviews] objectAtIndex: 2];
	[well setColor: [p vtYellowColor]];
	/* set bright yellow */
	well = [[brightBox subviews] objectAtIndex: 2];
	[well setColor: [p vtBrightYellowColor]];
	/* set blue */
	well = [[normalBox subviews] objectAtIndex: 3];
	[well setColor: [p vtBlueColor]];
	/* set bright blue */
	well = [[brightBox subviews] objectAtIndex: 3];
	[well setColor: [p vtBrightBlueColor]];
	/* set magenta */
	well = [[normalBox subviews] objectAtIndex: 4];
	[well setColor: [p vtMagentaColor]];
	/* set bright magenta */
	well = [[brightBox subviews] objectAtIndex: 4];
	[well setColor: [p vtBrightMagentaColor]];
	/* set cyan */
	well = [[normalBox subviews] objectAtIndex: 5];
	[well setColor: [p vtCyanColor]];
	/* set bright cyan */
	well = [[brightBox subviews] objectAtIndex: 5];
	[well setColor: [p vtBrightCyanColor]];
}

/* White setter and getter */
+ (id)vtWhiteColor {
	return [NSColor colorWithDeviceRed: 0.94 green: 0.94 blue: 0.94 alpha: 1.0];
}
+ (id)vtBrightWhiteColor {
	return [NSColor colorWithDeviceRed: 1.0 green: 1.0 blue: 1.0 alpha: 1.0];
}


- (id)profilesController
{
	return self->_profilesController;
}

@end
