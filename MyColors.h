//
//  MyColors.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (Terminal)
+ (id)vtBlackColor;
+ (id)vtRedColor;
+ (id)vtGreenColor;
+ (id)vtYellowColor;
+ (id)vtBlueColor;
+ (id)vtMagentaColor;
+ (id)vtCyanColor;
+ (id)vtWhiteColor;
+ (id)vtBrightBlackColor;
+ (id)vtBrightRedColor;
+ (id)vtBrightGreenColor;
+ (id)vtBrightYellowColor;
+ (id)vtBrightBlueColor;
+ (id)vtBrightMagentaColor;
+ (id)vtBrightCyanColor;
+ (id)vtBrightWhiteColor;
@end

@interface MyColors : NSColor

+ (void)setvtRedColor: (NSColor *)color;
+ (id)vtRedColor;
+ (void)setvtBrightRedColor: (NSColor *)color;
+ (id)vtBrightRedColor;
+ (void)setvtGreenColor: (NSColor *)color;
+ (id)vtGreenColor;
+ (void)setvtBrightGreenColor: (NSColor *)color;
+ (id)vtBrightGreenColor;
+ (void)setvtYellowColor: (NSColor *)color;
+ (id)vtYellowColor;
+ (void)setvtBrightYellowColor: (NSColor *)color;
+ (id)vtBrightYellowColor;
+ (void)setvtBlueColor: (NSColor *)color;
+ (id)vtBlueColor;
+ (void)setvtBrightBlueColor: (NSColor *)color;
+ (id)vtBrightBlueColor;
+ (void)setvtMagentaColor: (NSColor *)color;
+ (id)vtMagentaColor;
+ (void)setvtBrightMagentaColor: (NSColor *)color;
+ (id)vtBrightMagentaColor;
+ (void)setvtCyanColor: (NSColor *)color;
+ (id)vtCyanColor;
+ (void)setvtBrightCyanColor: (NSColor *)color;
+ (id)vtBrightCyanColor;
@end
