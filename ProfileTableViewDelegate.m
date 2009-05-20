//
//  ProfileTableViewDelegate.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 18/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "ProfileTableViewDelegate.h"
#import "MyTTAppPrefsController.h"
#import "TTProfileArrayController.h"

@implementation ProfileTableViewDelegate

- (id) init: (TTAppPrefsController *)ctrl
{
	self->ctl = ctrl;
	return self;
}

/**
 * This callback function is executed when the selection of the
 * profile list is changed, and changes the colors of the colorwells
 */
- (void) tableViewSelectionDidChange: (NSNotification *)aNotification
{
	NSTableView *tv = [aNotification object];
	TTProfileArrayController *datasource = [tv dataSource];
	//char *s = [[[[datasource selectedObjects] objectAtIndex: 0] className] cString];
	[ctl setColorWells: [[datasource selectedObjects] objectAtIndex: 0]];
	//NSRunAlertPanel(@"Haha", @"Selection changed! %s", @"Yeah", nil, nil, s);
}

@end
