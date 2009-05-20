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

@implementation TTAppPrefsController (MyTerm)

/**
 * Add a tab to manage colors in the preference panel
 */
- (void)addColorsTab
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSTabViewItem *text_colors_tabview;
	NSTabView *profile_settings;
	
	if (![NSBundle loadNibNamed:@"colors_selector" owner:bundle]) {
		NSLog(@"Error loading Nib for MyTermColors!");
	} else {
		/* Get the per-profile settings tabview */
		profile_settings = [[[[_tabView tabViewItemAtIndex: 1] view] subviews] objectAtIndex: 0];
		/* Get the new tab from the nib and add it */
		text_colors_tabview = [[NSTabViewItem alloc] init];
		[text_colors_tabview setLabel: _L(@"Colors")];
		[text_colors_tabview setView: bundle->colorsView];
		[profile_settings addTabViewItem: text_colors_tabview];
	}
}

/**
 * Return the profiles controller
 */
- (id)profilesController
{
	return self->_profilesController;
}

@end
