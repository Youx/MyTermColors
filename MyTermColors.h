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


#import "MyTTAppPrefsController.h"


NSString *_L(NSString *in);

@interface MyTermColors : NSObject {
	@public
	IBOutlet NSView *colorsView;
	id ctl;
}
+ (void) load;
+ (void) redrawWindows;
+ (MyTermColors*) sharedInstance;
- (id) profilesController;

@end
