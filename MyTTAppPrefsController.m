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

#import "MyTTAppPrefsController.h"
#import "MyTermColors.h"

/* This is what you could call the ugliest hack ever :
 * We create a weird object that will allow access to 
 * the attribute of the original object we are looking for.
 * Blindly poking at the memory.
 */
@interface MyTTAppPrefsController : NSObject {
@public	id _1;
@public	id _2;
@public	id _3;
@public	id _4;
@public	id _5;
@public	id _6;
@public	id _7;
@public	id _8;
@public	id _9;
@public	id _10;
@public	id _11;
@public	id _tabView; /* Here is the one we need! */
}
@end

@implementation MyTTAppPrefsController
@end

@implementation NSObject (MyTTAppPrefsController)

/**
 * Add a tab to manage colors in the preference panel
 */
- (void)addColorsTab
{
	MyTermColors *bundle = [MyTermColors sharedInstance];
	NSTabViewItem *text_colors_tabview;
	NSTabView *profile_settings;
	MyTTAppPrefsController *tmp = self;

	if (![NSBundle loadNibNamed:@"colors_selector" owner:bundle]) {
		NSLog(@"Error loading Nib for MyTermColors!");
	} else {
		profile_settings = [[[[tmp->_tabView tabViewItemAtIndex: 1] view] subviews] objectAtIndex: 0];
		/* Get the new tab from the nib and add it */
		text_colors_tabview = [[NSTabViewItem alloc] init];
		[text_colors_tabview setLabel: _L(@"Colors")];
		[text_colors_tabview setView: bundle->colorsView];
		[profile_settings addTabViewItem: text_colors_tabview];
	}
}


@end
