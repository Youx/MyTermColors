//
//  MyTermColors.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//


@class MyTTAppPrefsController;

#import <Cocoa/Cocoa.h>

@interface MyTermColors : NSObject {
	@public
	IBOutlet NSView *colorsView;
	MyTTAppPrefsController *appPrefsController;
}
+ (void) load;
+ (MyTermColors*) sharedInstance;
@end
