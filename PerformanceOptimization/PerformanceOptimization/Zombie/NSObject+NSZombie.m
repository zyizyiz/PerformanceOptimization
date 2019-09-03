//
//  NSObject+NSZombie.m
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import "NSObject+NSZombie.h"
#import "YZMethodSwizzling.h"
#import <objc/runtime.h>
#import "YZZombie.h"


@implementation NSObject (NSZombie)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = [self class];
        SEL originalSelector = NSSelectorFromString(@"dealloc");
        SEL swizzledSelector = @selector(newDealloc);
        
        [YZMethodSwizzling yz_swizzlingInstance:cls originalSelector:originalSelector swizzledSelecotr:swizzledSelector];
    });
}

- (void)newDealloc {
    object_setClass(self, [YZZombie class]);
//    [self newDealloc];
}

@end
