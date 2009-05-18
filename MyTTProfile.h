//
//  MyTTProfile.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 18/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TTProfile.h"

@interface MyTTProfile : TTProfile {

}

- (void)setvtRedColor: (NSColor *)color;
- (id)vtRedColor;
- (void)setvtBrightRedColor: (NSColor *)color;
- (id)vtBrightRedColor;
- (void)setvtGreenColor: (NSColor *)color;
- (id)vtGreenColor;
- (void)setvtBrightGreenColor: (NSColor *)color;
- (id)vtBrightGreenColor;
- (void)setvtYellowColor: (NSColor *)color;
- (id)vtYellowColor;
- (void)setvtBrightYellowColor: (NSColor *)color;
- (id)vtBrightYellowColor;
- (void)setvtBlueColor: (NSColor *)color;
- (id)vtBlueColor;
- (void)setvtBrightBlueColor: (NSColor *)color;
- (id)vtBrightBlueColor;
- (void)setvtMagentaColor: (NSColor *)color;
- (id)vtMagentaColor;
- (void)setvtBrightMagentaColor: (NSColor *)color;
- (id)vtBrightMagentaColor;
- (void)setvtCyanColor: (NSColor *)color;
- (id)vtCyanColor;
- (void)setvtBrightCyanColor: (NSColor *)color;
- (id)vtBrightCyanColor;

@end
