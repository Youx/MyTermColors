//
//  MyTermColors.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//


@class MyTTAppPrefsController;

#import <Cocoa/Cocoa.h>

NSString *_L(NSString *in);

@interface MyTermColors : NSObject {
	@public
	IBOutlet NSView *colorsView;
	MyTTAppPrefsController *ctl;
}
+ (void) load;
+ (void) redrawWindows;
+ (MyTermColors*) sharedInstance;
- (IBAction) setRed: (id)sender;
- (IBAction) setBRed: (id)sender;
- (IBAction) setGreen: (id)sender;
- (IBAction) setBGreen: (id)sender;
- (IBAction) setYellow: (id)sender;
- (IBAction) setBYellow: (id)sender;
- (IBAction) setBlue: (id)sender;
- (IBAction) setBBlue: (id)sender;
- (IBAction) setMagenta: (id)sender;
- (IBAction) setBMagenta: (id)sender;
- (IBAction) setCyan: (id)sender;
- (IBAction) setBCyan: (id)sender;
@end
