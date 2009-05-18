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
#import "MyTTProfile.h"

@interface MyTTAppPrefsController : TTAppPrefsController
{
}

- (void) addColorsTab;
- (void) setColorWells: (MyTTProfile *)p;
- (void)setProfileTableViewDelegate: (id)delegate;
- (id)profilesController;
@end
