/*
 *  TTAppPrefsController.h
 *  MyTermColors
 *
 *  Created by Hugo Camboulive on 23/04/09.
 *  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
 *
 */
#import <Cocoa/Cocoa.h>
#import "TTView.h"

@class TTTableView;

@interface TTAppPrefsController : NSWindowController
{
	NSMatrix *_defaultShellMatrix;
	NSTextField *_defaultShellTextField;
	NSTabView *_tabView;
	NSArrayController *_profilesController;
	NSArrayController *_workspacesController;
	NSTableView *_profilesTableView;
	NSMenuItem *_profilesActionMenuItem;
	TTTableView *_workspacesTableView;
	NSMenuItem *_workspacesActionMenuItem;
	NSView *_fontAccessoryView;
	BOOL _wasFontPanelVisible;
	BOOL _wasColorPanelVisible;
	NSUndoManager *_undoManager;
	TTView *_thumbnailView;
	TTLogicalScreen *_thumbnailScreen;
}

+ (id)sharedPreferencesController;
- (id)init;
- (void)dealloc;
- (void)applicationWillTerminate:(id)fp8;
- (void)windowDidLoad;
- (id)windowWillReturnUndoManager:(id)fp8;
- (id)undoManager;
- (void)showWindow:(id)fp8;
- (void)windowDidResignKey:(id)fp8;
- (void)windowWillClose:(id)fp8;
- (void)update;
- (void)defaultShellChanged:(id)fp8;
- (void)showEncodingCustomizationPane:(id)fp8;
- (void)orderFrontFontPanel:(id)fp8;
- (id)profilesController;
- (id)selectedPaneIdentifier;
- (void)setSelectedPaneIdentifier:(id)fp8;
- (void)tabView:(id)fp8 willSelectTabViewItem:(id)fp12;
- (void)tabView:(id)fp8 didSelectTabViewItem:(id)fp12;
- (void)takeSelectedTabIndexFromToolbarItem:(id)fp8;
- (id)toolbar:(id)fp8 itemForItemIdentifier:(id)fp12 willBeInsertedIntoToolbar:(BOOL)fp16;
- (id)toolbarDefaultItemIdentifiers:(id)fp8;
- (id)toolbarAllowedItemIdentifiers:(id)fp8;
- (id)toolbarSelectableItemIdentifiers:(id)fp8;
- (id)thumbnailView;
- (id)thumbnailOfSize:(struct _NSSize)fp8 forProfile:(id)fp16;
- (void)changeFont:(id)fp8;
- (void)observeValueForKeyPath:(id)fp8 ofObject:(id)fp12 change:(id)fp16 context:(void *)fp20;

@end
