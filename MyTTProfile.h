//
//  MyTTProfile.h
//  MyTermColors
//
//  Created by Hugo Camboulive on 20/05/09.
//  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
//

#import "TTProfile.h"

@interface TTProfile (MyTerm)

- (id)valueForKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
- (id)valueForUndefinedKey2:(id) key;

@end
