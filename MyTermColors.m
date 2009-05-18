//
//  MyTermColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTermColors.h"
#import "MyColors.h"


#import "MyTTView.h"

#import "TTAppPrefsController.h"
#import "MyTTAppPrefsController.h"

#import <objc/objc-runtime.h>
#import <objc/objc-class.h>
#import <uuid/uuid.h>

@class TTView;


@implementation MyTermColors
/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void) load
{
	MyTermColors* plugin = [MyTermColors sharedInstance];

	/* Do some class posing */	
	[MyColors poseAsClass: [NSColor class]];
	[MyTTView poseAsClass: [TTView class]];
	[MyTTAppPrefsController poseAsClass: [TTAppPrefsController class]];

	/* Add the new tab */
	MyTTAppPrefsController *ctl;
	ctl = [MyTTAppPrefsController sharedPreferencesController];
	plugin->appPrefsController = ctl;
	[ctl window];			/* Force instanciation of the Controller */
	[ctl addColorsTab];		/* Add the colors tab */

	[ctl setDefaultColors];		/* Set the default colors */
	[ctl setColorWells];		/* Update the color wells to the right color */
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
	[MyColors setvtRedColor: [sender color]];
}
- (IBAction) setBRed: (id)sender
{
	[MyColors setvtBrightRedColor: [sender color]];
}
- (IBAction) setGreen: (id)sender
{
	[MyColors setvtGreenColor: [sender color]];
}
- (IBAction) setBGreen: (id)sender
{
	[MyColors setvtBrightGreenColor: [sender color]];
}
- (IBAction) setYellow: (id)sender
{
	[MyColors setvtYellowColor: [sender color]];
}
- (IBAction) setBYellow: (id)sender
{
	[MyColors setvtBrightYellowColor: [sender color]];
}
- (IBAction) setBlue: (id)sender
{
	[MyColors setvtBlueColor: [sender color]];
}
- (IBAction) setBBlue: (id)sender
{
	[MyColors setvtBrightBlueColor: [sender color]];
}
- (IBAction) setMagenta: (id)sender
{
	[MyColors setvtMagentaColor: [sender color]];
}
- (IBAction) setBMagenta: (id)sender
{
	[MyColors setvtBrightMagentaColor: [sender color]];
}
- (IBAction) setCyan: (id)sender
{
	[MyColors setvtCyanColor: [sender color]];
}
- (IBAction) setBCyan: (id)sender
{
	[MyColors setvtBrightCyanColor: [sender color]];
}
@end
