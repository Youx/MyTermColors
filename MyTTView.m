/*
 * MyTermColors, a SIMBL plugin to change Terminal.app's colors
 * Copyright (C) 2009 Hugo Camboulive <hugo.camboulive AT gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This plugin is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "MyTTView.h"
#import "MyTTProfile.h"
#import "MyColors.h"

@implementation NSView (MyTTView)


/* New for OSX 10.6 's Terminal.app */
- (id)colorForANSIColor2:(unsigned int)arg1 adjustedRelativeToColor:(id)arg2 {
	NSString* colors[] = {@"vtBlackColor",
		@"vtBlackColor", @"vtRedColor", @"vtGreenColor", @"vtYellowColor",
		@"vtBlueColor", @"vtMagentaColor", @"vtCyanColor", @"vtWhiteColor",
		@"vtBrightBlackColor", @"vtBrightRedColor", @"vtBrightGreenColor",
		@"vtBrightYellowColor", @"vtBrightBlueColor", @"vtBrightMagentaColor",
		@"vtBrightCyanColor", @"vtBrightWhiteColor"};

	if (arg1 == 0 || arg1 > 16) {/* undefined behavior : use the old function */
		return [self colorForANSIColor2: arg1 adjustedRelativeToColor: arg2];
	} else {
		return [[self performSelector: @selector(profile)] valueForKey: colors[arg1]];//
	}
}
/* Function for OSX 10.5 's Terminal.app */
- (id)colorForANSIColor2:(unsigned int)arg1 {
	NSString* colors[] = {@"vtBlackColor",
		@"vtBlackColor", @"vtRedColor", @"vtGreenColor", @"vtYellowColor",
		@"vtBlueColor", @"vtMagentaColor", @"vtCyanColor", @"vtWhiteColor",
		@"vtBrightBlackColor", @"vtBrightRedColor", @"vtBrightGreenColor",
		@"vtBrightYellowColor", @"vtBrightBlueColor", @"vtBrightMagentaColor",
		@"vtBrightCyanColor", @"vtBrightWhiteColor"};
	
	if (arg1 == 0 || arg1 > 16) {/* undefined behavior : use the old function */
		return [self colorForANSIColor2: arg1];
	} else {
		return [[self performSelector: @selector(profile)] valueForKey: colors[arg1]];//
	}
}
@end
