/*
 *  TTProfileArrayController.h
 *  MyTermColors
 *
 *  Created by Hugo Camboulive on 18/05/09.
 *  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
 *
 */

@interface TTEditingArrayController : NSArrayController
{
	NSTableView *_tableView;
}

- (void)add:(id)fp8;

@end


@interface TTProfileArrayController : TTEditingArrayController
{
	NSTextField *_commandField;
}

- (void)awakeFromNib;
- (id)newObject;
- (void)willAddObject:(id)fp8;
- (void)willChangeValuesForArrangedKeys:(BOOL)fp8 objectKeys:(BOOL)fp12 indexKeys:(BOOL)fp16;
- (void)didChangeValuesForArrangedKeys:(BOOL)fp8 objectKeys:(BOOL)fp12 indexKeys:(BOOL)fp16;
- (BOOL)canRemove;
- (BOOL)canMakeDefault;
- (void)makeDefault:(id)fp8;
- (void)duplicate:(id)fp8;
- (void)restoreDefaults:(id)fp8;
- (BOOL)canExport;
- (void)export:(id)fp8;
- (void)exportPanelDidEnd:(id)fp8 returnCode:(int)fp12 contextInfo:(void *)fp16;
- (void)import:(id)fp8;
- (void)importPanelDidEnd:(id)fp8 returnCode:(int)fp12 contextInfo:(void *)fp16;
- (BOOL)panel:(id)fp8 shouldShowFilename:(id)fp12;
- (id)shouldRunCommandAtStartup;
- (void)setShouldRunCommandAtStartup:(id)fp8;
- (BOOL)tableView:(id)fp8 writeRowsWithIndexes:(id)fp12 toPasteboard:(id)fp16;
- (id)tableView:(id)fp8 namesOfPromisedFilesDroppedAtDestination:(id)fp12 forDraggedRowsWithIndexes:(id)fp16;
- (unsigned int)tableView:(id)fp8 validateDrop:(id)fp12 proposedRow:(int)fp16 proposedDropOperation:(unsigned int)fp20;
- (BOOL)tableView:(id)fp8 acceptDrop:(id)fp12 row:(int)fp16 dropOperation:(unsigned int)fp20;

@end

