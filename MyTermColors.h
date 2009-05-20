//
//  MyTermColors.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//


#import "MyTTAppPrefsController.h"


NSString *_L(NSString *in);

@interface MyTermColors : NSObject {
	@public
	IBOutlet NSView *colorsView;
	TTAppPrefsController *ctl;
}
+ (void) load;
+ (void) redrawWindows;
+ (MyTermColors*) sharedInstance;
- (id) profilesController;

@end
