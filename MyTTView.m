//
//  MyTTView.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 04/11/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTTView.h"
#import "MyColors.h"
#import "MyTermColors.h"
#import "MyTTAppPrefsController.h"

@implementation MyTTView

- (id)colorForANSIColor:(unsigned int)fp8 {
	id def = [super colorForANSIColor: fp8];
	
	switch(fp8) {
		case 1:
			return [NSColor vtBlackColor];
		case 9:
			return [NSColor vtBrightBlackColor];
		case 2:
			return [NSColor vtRedColor];
		case 10:
			return [NSColor vtBrightRedColor];
		case 3:
			return [NSColor vtGreenColor];
		case 11:
			return [NSColor vtBrightGreenColor];
		case 4:
			return [NSColor vtYellowColor];
		case 12:
			return [NSColor vtBrightYellowColor];
		case 5:
			return [NSColor vtBlueColor];
		case 13:
			return [NSColor vtBrightBlueColor];
		case 6:
			return [NSColor vtMagentaColor];
		case 14:
			return [NSColor vtBrightMagentaColor];
		case 7:
			return [NSColor vtCyanColor];
		case 15:
			return [NSColor vtBrightCyanColor];
		case 8:
			return [NSColor vtWhiteColor];
		case 16:
			return [NSColor vtBrightWhiteColor];
		default:
			return def;
	}
}
@end
