//
//  ProfileTableViewDelegate.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 18/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyTTAppPrefsController.h"

@interface ProfileTableViewDelegate : NSObject {
	MyTTAppPrefsController *ctl;
}
- (id) init: (MyTTAppPrefsController *)ctrl;
- (void) tableViewSelectionDidChange: (NSNotification *)aNotification;
@end
