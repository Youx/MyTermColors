//
//  MyTTView.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 04/11/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTTView.h"
#import "MyTermColors.h"
#import "MyTTAppPrefsController.h"
#import "MyTTProfile.h"

@implementation MyTTView

- (id)colorForANSIColor:(unsigned int)fp8 {
	id def = [super colorForANSIColor: fp8];
	MyTTProfile *p = (MyTTProfile *)self->_profile;
	
	switch(fp8) {
/*		case 1:
			return [p vtBlackColor];
		case 9:
			return [p vtBrightBlackColor];*/
		case 2:
			return [p vtRedColor];
		case 10:
			return [p vtBrightRedColor];
		case 3:
			return [p vtGreenColor];
		case 11:
			return [p vtBrightGreenColor];
		case 4:
			return [p vtYellowColor];
		case 12:
			return [p vtBrightYellowColor];
		case 5:
			return [p vtBlueColor];
		case 13:
			return [p vtBrightBlueColor];
		case 6:
			return [p vtMagentaColor];
		case 14:
			return [p vtBrightMagentaColor];
		case 7:
			return [p vtCyanColor];
		case 15:
			return [p vtBrightCyanColor];
/*		case 8:
			return [p vtWhiteColor];
		case 16:
			return [p vtBrightWhiteColor];*/
		default:
			return def;
	}
}
@end
