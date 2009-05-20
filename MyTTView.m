//
//  MyTTView.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 04/11/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTTView.h"
#import "MyTTProfile.h"

@implementation TTView (MyTerm)

- (id)colorForANSIColor2:(unsigned int)fp8 {
	NSString* colors[] = {@"",
		@"vtBlackColor", @"vtRedColor", @"vtGreenColor", @"vtYellowColor",
		@"vtBlueColor", @"vtMagentaColor", @"vtCyanColor", @"vtWhiteColor",
		@"vtBrightBlackColor", @"vtBrightRedColor", @"vtBrightGreenColor",
		@"vtBrightYellowColor", @"vtBrightBlueColor", @"vtBrightMagentaColor",
	@"vtBrightCyanColor", @"vtBrightWhiteColor"};

	if (fp8 == 0 || fp8 > 16) /* undefined behavior : use the old function */
		return [self colorForANSIColor2: fp8];
	else
		return [self->_profile valueForKey: colors[fp8]];
}
@end
