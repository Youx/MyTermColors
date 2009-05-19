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
#import "TTProfile.h"

@implementation MyTTView

- (id)colorForANSIColor:(unsigned int)fp8 {
	id def = [super colorForANSIColor: fp8];
	TTProfile *p = (TTProfile *)self->_profile;
	MyTTAppPrefsController *ctl = [MyTTAppPrefsController sharedPreferencesController];
	switch(fp8) {
/*		case 1:
			return [p vtBlackColor];
		case 9:
			return [p vtBrightBlackColor];*/
		case 2:
			return [ctl vtRedColorForProfile: p];
		case 10:
			return [ctl vtBrightRedColorForProfile: p];
		case 3:
			return [ctl vtGreenColorForProfile: p];
		case 11:
			return [ctl vtBrightGreenColorForProfile: p];
		case 4:
			return [ctl vtYellowColorForProfile: p];
		case 12:
			return [ctl vtBrightYellowColorForProfile: p];
		case 5:
			return [ctl vtBlueColorForProfile: p];
		case 13:
			return [ctl vtBrightBlueColorForProfile: p];
		case 6:
			return [ctl vtMagentaColorForProfile: p];
		case 14:
			return [ctl vtBrightMagentaColorForProfile: p];
		case 7:
			return [ctl vtCyanColorForProfile: p];
		case 15:
			return [ctl vtBrightCyanColorForProfile: p];
/*		case 8:
			return [p vtWhiteColor];
		case 16:
			return [p vtBrightWhiteColor];*/
		default:
			return def;
	}
}
@end
