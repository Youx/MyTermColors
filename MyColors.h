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
+ (id)vtCyanColor;
+ (id)vtBrightCyanColor;
+ (id)vtBlueColor;
+ (id)vtBrightBlueColor;
@end
