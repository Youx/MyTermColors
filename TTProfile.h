/*
 *  TTProfile.h
 *  MyTermColors
 *
 *  Created by Hugo Camboulive on 18/05/09.
 *  Copyright 2009 Université du Maine - IUP MIME. All rights reserved.
 *
 */

@interface TTProfile : NSObject <NSCopying, NSCoding>
{
	NSMutableDictionary *_values;
	NSMutableSet *_observedKeys;
	TTProfile *_parentProfile;
	NSString *_name;
}

+ (id)profileKeys;
- (id)init;
- (void)dealloc;
- (id)initWithProfile:(id)fp8;
- (void)encodeWithCoder:(id)fp8;
- (id)initWithCoder:(id)fp8;
- (id)copyWithZone:(struct _NSZone *)fp8;
- (BOOL)isEqual:(id)fp8;
- (id)description;
- (void)setParentProfile:(id)fp8;
- (id)parentProfile;
- (void)setProfile:(id)fp8;
- (id)name;
- (void)setName:(id)fp8;
- (BOOL)validateName:(id *)fp8 error:(id *)fp12;
- (id)scopeValueForKey:(id)fp8;
- (void)setScopeValue:(id)fp8 forKey:(id)fp12;
- (id)scopeValues;
- (void)setScopeValues:(id)fp8;
- (id)effectiveValues;
- (id)effectiveValueForKey:(id)fp8;
- (id)valueForUndefinedKey:(id)fp8;
- (void)setValue:(id)fp8 forUndefinedKey:(id)fp12;
- (void)addObserver:(id)fp8 forKeyPath:(id)fp12 options:(unsigned int)fp16 context:(void *)fp20;
- (void)removeObserver:(id)fp8 forKeyPath:(id)fp12;
- (void)observeValueForKeyPath:(id)fp8 ofObject:(id)fp12 change:(id)fp16 context:(void *)fp20;
- (void)stopObservingParentProfile;
- (id)propertyListRepresentation;
- (id)initWithPropertyListRepresentation:(id)fp8;
- (BOOL)setPropertyListRepresentation:(id)fp8;
- (id)encodingController;

@end