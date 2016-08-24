//
//  NSMutableArray+Addition.m
//  QuDianApp
//
//  Created by wangpengbo on 14-12-3.
//  Copyright (c) 2014年 wangpengbo. All rights reserved.
//

#import "NSMutableArray+Addition.h"

@implementation NSMutableArray (WeakReference)

+ (id)mutableArrayUsingWeakReferences {
    return [self mutableArrayUsingWeakReferencesWithCapacity:0];
}

+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity {
    CFArrayCallBacks callbacks = {0, NULL, NULL, CFCopyDescription, CFEqual};
    // We create a weak reference array
    return (__bridge_transfer id)(CFArrayCreateMutable(0, capacity, &callbacks));
    
}

@end
