//
//  MyTTAppPrefsController.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 24/04/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "MyTTAppPrefsController.h"
#import "MyTermColors.h"
#import "TTProfile.h"
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

- (void)addKeysToSave
{
	/*int c = [[self->_profilesController arrangedObjects] count];
	int i;

	for (i = 0 ; i < c ; i++) {
		TTProfile *p = [[self->_profilesController arrangedObjects] objectAtIndex: i];
		[p addObserver:p forKeyPath:@"vtRed" options:1 context:NULL];
		[p addObserver:self->_profilesController forKeyPath:@"vtRed" options:0 context:NULL];

	}*/
	//[TTProfile initProfileKeys];
	//[[TTProfile profileKeys] addObject: @"vtRed"];
}

- (void)addColorsTab
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSTabViewItem *settings;
	NSTabViewItem *text_colors_tabview;
	NSTabView *profile_settings;
	NSView *settings_view;
	
	if (![NSBundle loadNibNamed:@"colors_selector" owner:bundle]) {
		NSLog(@"Error loading Nib for MyTermColors!");
	} else {
		/* Get the "settings" tab */
		settings = [_tabView tabViewItemAtIndex: 1];
		settings_view = [settings view];
		/* Get the per-profile settings tabview */
		profile_settings = [[settings_view subviews] objectAtIndex:0];
		text_colors_tabview = [[NSTabViewItem alloc] init];
		[text_colors_tabview setLabel: _L(@"Colors")];
		[text_colors_tabview setView: bundle->colorsView];
		[profile_settings addTabViewItem: text_colors_tabview];
	}
}

- (void) setColorWells: (TTProfile *)p
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSColorWell *well;
	NSBox *normalBox, *brightBox;

	brightBox = [[[bundle->colorsView subviews] objectAtIndex: 0] contentView];
	normalBox = [[[bundle->colorsView subviews] objectAtIndex: 1] contentView];

	/* set red */
	well = [[normalBox subviews] objectAtIndex: 0];
	[well setColor: [self vtRedColorForProfile:p]];
	/* set bright red */
	well = [[brightBox subviews] objectAtIndex: 0];
	[well setColor: [self vtBrightRedColorForProfile:p]];
	/* set green */
	well = [[normalBox subviews] objectAtIndex: 1];
	[well setColor: [self vtGreenColorForProfile:p]];
	/* set bright green */
	well = [[brightBox subviews] objectAtIndex: 1];
	[well setColor: [self vtBrightGreenColorForProfile:p]];
	/* set yellow */
	well = [[normalBox subviews] objectAtIndex: 2];
	[well setColor: [self vtYellowColorForProfile:p]];
	/* set bright yellow */
	well = [[brightBox subviews] objectAtIndex: 2];
	[well setColor: [self vtBrightYellowColorForProfile:p]];
	/* set blue */
	well = [[normalBox subviews] objectAtIndex: 3];
	[well setColor: [self vtBlueColorForProfile:p]];
	/* set bright blue */
	well = [[brightBox subviews] objectAtIndex: 3];
	[well setColor: [self vtBrightBlueColorForProfile:p]];
	/* set magenta */
	well = [[normalBox subviews] objectAtIndex: 4];
	[well setColor: [self vtMagentaColorForProfile:p]];
	/* set bright magenta */
	well = [[brightBox subviews] objectAtIndex: 4];
	[well setColor: [self vtBrightMagentaColorForProfile:p]];
	/* set cyan */
	well = [[normalBox subviews] objectAtIndex: 5];
	[well setColor: [self vtCyanColorForProfile:p]];
	/* set bright cyan */
	well = [[brightBox subviews] objectAtIndex: 5];
	[well setColor: [self vtBrightCyanColorForProfile:p]];
}

- (id)profilesController
{
	return self->_profilesController;
}

/* Red setter and getter */
- (void)setvtRedColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtRed"];
}
- (id)vtRedColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtRed"] == nil)
		[self setvtRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtRed"];
}

/* Bright Red setter and getter */
- (void)setvtBrightRedColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBRed"];
}
- (id)vtBrightRedColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBRed"] == nil)
		[self setvtBrightRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBRed"];
}

/* Green setter and getter */
- (void)setvtGreenColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtGreen"];
}
- (id)vtGreenColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtGreen"] == nil)
		[self setvtGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtGreen"];
}

/* Bright Green setter and getter */
- (void)setvtBrightGreenColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBGreen"];
}
- (id)vtBrightGreenColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBGreen"] == nil)
		[self setvtBrightGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBGreen"];
}

/* Yellow setter and getter */
- (void)setvtYellowColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtYellow"];
}
- (id)vtYellowColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtYellow"] == nil)
		[self setvtYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtYellow"];
}

/* Bright Yellow setter and getter */
- (void)setvtBrightYellowColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBYellow"];
}
- (id)vtBrightYellowColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBYellow"] == nil)
		[self setvtBrightYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBYellow"];
}

/* Blue setter and getter */
- (void)setvtBlueColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBlue"];
}
- (id)vtBlueColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBlue"] == nil)
		[self setvtBlueColor: [NSColor colorWithDeviceRed: 0.31 green: 0.51 blue: 0.70 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBlue"];
}

/* Bright Blue setter and getter */
- (void)setvtBrightBlueColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBBlue"];
}
- (id)vtBrightBlueColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBBlue"] == nil)
		[self setvtBrightBlueColor: [NSColor colorWithDeviceRed: 0.39 green: 0.58 blue: 0.76 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBBlue"];
}

/* Magenta setter and getter */
- (void)setvtMagentaColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtMagenta"];
}
- (id)vtMagentaColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtMagenta"] == nil)
		[self setvtMagentaColor: [NSColor colorWithDeviceRed: 0.72 green: 0.505 blue: 0.675 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtMagenta"];
}

/* Bright Magenta setter and getter */
- (void)setvtBrightMagentaColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBMagenta"];
}
- (id)vtBrightMagentaColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBMagenta"] == nil)
		[self setvtBrightMagentaColor: [NSColor colorWithDeviceRed: 0.784 green: 0.4 blue: 0.705 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBMagenta"];
}

/* Cyan setter and getter */
- (void)setvtCyanColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtCyan"];
}
- (id)vtCyanColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtCyan"] == nil)
		[self setvtCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtCyan"];
}

/* Bright Cyan setter and getter */
- (void)setvtBrightCyanColor: (NSColor *)color withProfile:(TTProfile *)p {
	[p setScopeValue:color forKey:@"vtBCyan"];
}
- (id)vtBrightCyanColorForProfile:(TTProfile *)p {
	if ([p effectiveValueForKey:@"vtBCyan"] == nil)
		[self setvtBrightCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0] withProfile: p];
	return [p effectiveValueForKey:@"vtBCyan"];
}



@end
