//
//  MyColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyColors.h"

@implementation MyColors : NSColor

+ (id)vtRedColor {
	return [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0];
}
+ (id)vtBrightRedColor {
	return [NSColor colorWithDeviceRed: 0.64 green: 0.34 blue: 0.34 alpha: 1.0];
}

+ (id)vtGreenColor {
	return [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0];
}
+ (id)vtBrightGreenColor {
	return [NSColor colorWithDeviceRed: 0.48 green: 0.77 blue: 0.44 alpha: 1.0];
}

+ (id)vtYellowColor {
	return [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0];
}
+ (id)vtBrightYellowColor {
	return [NSColor colorWithDeviceRed: 0.87 green: 0.88 blue: 0.31 alpha: 1.0];
}

+ (id)vtBlueColor {
	return [NSColor colorWithDeviceRed: 0.31 green: 0.51 blue: 0.70 alpha: 1.0];
}
+ (id)vtBrightBlueColor {
	return [NSColor colorWithDeviceRed: 0.39 green: 0.58 blue: 0.76 alpha: 1.0];
}

+ (id)vtMagentaColor {
	return [NSColor colorWithDeviceRed: 0.72 green: 0.505 blue: 0.675 alpha: 1.0];
}
+ (id)vtBrightMagentaColor {
	return [NSColor colorWithDeviceRed: 0.784 green: 0.4 blue: 0.705 alpha: 1.0];
}

+ (id)vtCyanColor {
	return [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0];
}
+ (id)vtBrightCyanColor {
	return [NSColor colorWithDeviceRed: 0.53 green: 0.53 blue: 0.625 alpha: 1.0];
}

+ (id)vtWhiteColor {
	return [NSColor colorWithDeviceRed: 0.94 green: 0.94 blue: 0.94 alpha: 1.0];
}
+ (id)vtBrightWhiteColor {
	return [NSColor colorWithDeviceRed: 1.0 green: 1.0 blue: 1.0 alpha: 1.0];
}

@end