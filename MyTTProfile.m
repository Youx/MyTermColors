//
//  MyTTProfile.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 18/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "MyTTProfile.h"


@implementation MyTTProfile

/* Red setter and getter */
- (void)setvtRedColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtRed"];
}
- (id)vtRedColor {
	if ([self effectiveValueForKey:@"vtRed"] == nil)
		[self setvtRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtRed"];
}

/* Bright Red setter and getter */
- (void)setvtBrightRedColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBRed"];
}
- (id)vtBrightRedColor {
	if ([self effectiveValueForKey:@"vtBRed"] == nil)
		[self setvtBrightRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBRed"];
}

/* Green setter and getter */
- (void)setvtGreenColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtGreen"];
}
- (id)vtGreenColor {
	if ([self effectiveValueForKey:@"vtGreen"] == nil)
		[self setvtGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtGreen"];
}

/* Bright Green setter and getter */
- (void)setvtBrightGreenColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBGreen"];
}
- (id)vtBrightGreenColor {
	if ([self effectiveValueForKey:@"vtBGreen"] == nil)
		[self setvtBrightGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBGreen"];
}

/* Yellow setter and getter */
- (void)setvtYellowColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtYellow"];
}
- (id)vtYellowColor {
	if ([self effectiveValueForKey:@"vtYellow"] == nil)
		[self setvtYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtYellow"];
}

/* Bright Yellow setter and getter */
- (void)setvtBrightYellowColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBYellow"];
}
- (id)vtBrightYellowColor {
	if ([self effectiveValueForKey:@"vtBYellow"] == nil)
		[self setvtBrightYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBYellow"];
}

/* Blue setter and getter */
- (void)setvtBlueColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBlue"];
}
- (id)vtBlueColor {
	if ([self effectiveValueForKey:@"vtBlue"] == nil)
		[self setvtBlueColor: [NSColor colorWithDeviceRed: 0.31 green: 0.51 blue: 0.70 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBlue"];
}

/* Bright Blue setter and getter */
- (void)setvtBrightBlueColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBBlue"];
}
- (id)vtBrightBlueColor {
	if ([self effectiveValueForKey:@"vtBBlue"] == nil)
		[self setvtBrightBlueColor: [NSColor colorWithDeviceRed: 0.39 green: 0.58 blue: 0.76 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBBlue"];
}

/* Magenta setter and getter */
- (void)setvtMagentaColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtMagenta"];
}
- (id)vtMagentaColor {
	if ([self effectiveValueForKey:@"vtMagenta"] == nil)
		[self setvtMagentaColor: [NSColor colorWithDeviceRed: 0.72 green: 0.505 blue: 0.675 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtMagenta"];
}

/* Bright Magenta setter and getter */
- (void)setvtBrightMagentaColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBMagenta"];
}
- (id)vtBrightMagentaColor {
	if ([self effectiveValueForKey:@"vtBMagenta"] == nil)
		[self setvtBrightMagentaColor: [NSColor colorWithDeviceRed: 0.784 green: 0.4 blue: 0.705 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBMagenta"];
}

/* Cyan setter and getter */
- (void)setvtCyanColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtCyan"];
}
- (id)vtCyanColor {
	if ([self effectiveValueForKey:@"vtCyan"] == nil)
		[self setvtCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtCyan"];
}

/* Bright Cyan setter and getter */
- (void)setvtBrightCyanColor: (NSColor *)color {
	[self setScopeValue:color forKey:@"vtBCyan"];
}
- (id)vtBrightCyanColor {
	if ([self effectiveValueForKey:@"vtBCyan"] == nil)
		[self setvtBrightCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0]];
	return [self effectiveValueForKey:@"vtBCyan"];
}

@end
