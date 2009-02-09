//
//  MyTermColors.m
//  MyTermColors
//
//  Created by Hugo Camboulive on 10/30/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "MyTermColors.h"
#import "MyColors.h"


#import "MyTTView.h"

#import <objc/objc-runtime.h>
#import <objc/objc-class.h>
#import <uuid/uuid.h>

@class TTView;



@implementation MyTermColors
/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void) load
{
	MyTermColors* plugin = [MyTermColors sharedInstance];
	// Replace our classes	
	[MyColors poseAsClass: [NSColor class]];
	[MyTTView poseAsClass: [TTView class]];
}


/**
 * @return the single static instance of the plugin object
 */
+ (MyTermColors*) sharedInstance
{
	static MyTermColors* plugin = nil;
	
	if (plugin == nil)
		plugin = [[MyTermColors alloc] init];
	
	return plugin;
}

@end
