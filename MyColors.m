//
//  MyColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyColors.h"
#import <Cocoa/Cocoa.h>

/* Declare colors as static variables,
 * and add a setter and getter for each color */
static NSColor *vtBlackColor;
static NSColor *vtRedColor;
static NSColor *vtBrightRedColor;
static NSColor *vtGreenColor;
static NSColor *vtBrightGreenColor;
static NSColor *vtYellowColor;
static NSColor *vtBrightYellowColor;
static NSColor *vtBlueColor;
static NSColor *vtBrightBlueColor;
static NSColor *vtMagentaColor;
static NSColor *vtBrightMagentaColor;
static NSColor *vtCyanColor;
static NSColor *vtBrightCyanColor;

@implementation MyColors : NSColor

/* Red setter and getter */
+ (void)setvtRedColor: (NSColor *)color {
	vtRedColor = color;
}
+ (id)vtRedColor {
	if (vtRedColor == nil)
		[MyColors setvtRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0]];
	return vtRedColor;
}

/* Bright Red setter and getter */
+ (void)setvtBrightRedColor: (NSColor *)color {
	vtBrightRedColor = color;
}
+ (id)vtBrightRedColor {
	if (vtBrightRedColor == nil)
		[MyColors setvtBrightRedColor: [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0]];
	return vtBrightRedColor;
}

/* Green setter and getter */
+ (void)setvtGreenColor: (NSColor *)color {
	vtGreenColor = color;
}
+ (id)vtGreenColor {
	if (vtGreenColor == nil)
		[MyColors setvtGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0]];
	return vtGreenColor;
}

/* Bright Green setter and getter */
+ (void)setvtBrightGreenColor: (NSColor *)color {
	vtBrightGreenColor = color;
}
+ (id)vtBrightGreenColor {
	if (vtBrightGreenColor == nil)
		[MyColors setvtBrightGreenColor: [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0]];
	return vtBrightGreenColor;
}

/* Yellow setter and getter */
+ (void)setvtYellowColor: (NSColor *)color {
	vtYellowColor = color;
}
+ (id)vtYellowColor {
	if (vtYellowColor == nil)
		[MyColors setvtYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0]];
	return vtYellowColor;
}

/* Bright Yellow setter and getter */
+ (void)setvtBrightYellowColor: (NSColor *)color {
	vtBrightYellowColor = color;
}
+ (id)vtBrightYellowColor {
	if (vtBrightYellowColor == nil)
		[MyColors setvtBrightYellowColor: [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0]];
	return vtBrightYellowColor;
}

/* Blue setter and getter */
+ (void)setvtBlueColor: (NSColor *)color {
	vtBlueColor = color;
}
+ (id)vtBlueColor {
	if (vtBlueColor == nil)
		[MyColors setvtBlueColor: [NSColor colorWithDeviceRed: 0.31 green: 0.51 blue: 0.70 alpha: 1.0]];
	return vtBlueColor;
}

/* Bright Blue setter and getter */
+ (void)setvtBrightBlueColor: (NSColor *)color {
	vtBrightBlueColor = color;
}
+ (id)vtBrightBlueColor {
	if (vtBrightBlueColor == nil)
		[MyColors setvtBrightBlueColor: [NSColor colorWithDeviceRed: 0.39 green: 0.58 blue: 0.76 alpha: 1.0]];
	return vtBrightBlueColor;
}

/* Magenta setter and getter */
+ (void)setvtMagentaColor: (NSColor *)color {
	vtMagentaColor = color;
}
+ (id)vtMagentaColor {
	if (vtMagentaColor == nil)
		[MyColors setvtMagentaColor: [NSColor colorWithDeviceRed: 0.72 green: 0.505 blue: 0.675 alpha: 1.0]];
	return vtMagentaColor;
}

/* Bright Magenta setter and getter */
+ (void)setvtBrightMagentaColor: (NSColor *)color {
	vtBrightMagentaColor = color;
}
+ (id)vtBrightMagentaColor {
	if (vtBrightMagentaColor == nil)
		[MyColors setvtBrightMagentaColor: [NSColor colorWithDeviceRed: 0.784 green: 0.4 blue: 0.705 alpha: 1.0]];
	return vtBrightMagentaColor;
}

/* Cyan setter and getter */
+ (void)setvtCyanColor: (NSColor *)color {
	vtCyanColor = color;
}
+ (id)vtCyanColor {
	if (vtCyanColor == nil)
		[MyColors setvtCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0]];
	return vtCyanColor;
}

/* Bright Cyan setter and getter */
+ (void)setvtBrightCyanColor: (NSColor *)color {
	vtBrightCyanColor = color;
}
+ (id)vtBrightCyanColor {
	if (vtBrightCyanColor == nil)
		[MyColors setvtBrightCyanColor: [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0]];
	return vtBrightCyanColor;
}

/* White setter and getter */
+ (id)vtWhiteColor {
	return [NSColor colorWithDeviceRed: 0.94 green: 0.94 blue: 0.94 alpha: 1.0];
}
+ (id)vtBrightWhiteColor {
	return [NSColor colorWithDeviceRed: 1.0 green: 1.0 blue: 1.0 alpha: 1.0];
}


@end
