//
//  MyTTView.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 04/11/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TTView.h"

@interface TTView (MyTerm)

- (id)colorForANSIColor2:(unsigned int)fp8;

@end
