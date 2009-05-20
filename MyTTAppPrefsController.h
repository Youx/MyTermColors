//
//  MyTTAppPrefsController.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 24/04/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "TTAppPrefsController.h"
#import "MyTermColors.h"
#import "ProfileTableViewDelegate.h"
#import "TTProfile.h"

@interface TTAppPrefsController (MyTerm)

- (void) addColorsTab;
- (void) setColorWells: (TTProfile *)p;
- (void)addKeysToSave;
- (void)setProfileTableViewDelegate: (id)delegate;
- (id)profilesController;


- (void)setvtRedColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtRedColorForProfile:(TTProfile *)p;
- (void)setvtBrightRedColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightRedColorForProfile:(TTProfile *)p;
- (void)setvtGreenColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtGreenColorForProfile:(TTProfile *)p;
- (void)setvtBrightGreenColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightGreenColorForProfile:(TTProfile *)p;
- (void)setvtYellowColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtYellowColorForProfile:(TTProfile *)p;
- (void)setvtBrightYellowColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightYellowColorForProfile:(TTProfile *)p;
- (void)setvtBlueColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBlueColorForProfile:(TTProfile *)p;
- (void)setvtBrightBlueColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightBlueColorForProfile:(TTProfile *)p;
- (void)setvtMagentaColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtMagentaColorForProfile:(TTProfile *)p;
- (void)setvtBrightMagentaColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightMagentaColorForProfile:(TTProfile *)p;
- (void)setvtCyanColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtCyanColorForProfile:(TTProfile *)p;
- (void)setvtBrightCyanColor: (NSColor *)color withProfile:(TTProfile *)p;
- (id)vtBrightCyanColorForProfile:(TTProfile *)p;

@end
