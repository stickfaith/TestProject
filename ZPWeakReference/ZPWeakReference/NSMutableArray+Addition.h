//
//  NSMutableArray+Addition.h
//  QuDianApp
//
//  Created by wangpengbo on 14-12-3.
//  Copyright (c) 2014年 wangpengbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (WeakReference)

+ (id)mutableArrayUsingWeakReferences;

+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity;

@end
