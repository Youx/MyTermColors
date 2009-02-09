//
//  MyTTView.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 04/11/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TTView.h"

@interface MyTTView : TTView {
}
- (id)colorForANSIColor:(unsigned int)fp8;
@end
