//
//  YZMethodSwizzling.m
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import "YZMethodSwizzling.h"
#import <objc/runtime.h>

@implementation YZMethodSwizzling

- (void)yz_swizzlingInstance:(Class)cls originalSelector:(SEL)original swizzledSelecotr:(SEL)swizzled {
    Method originalMethod = class_getInstanceMethod(cls, original);
    Method swizzledMethod = class_getInstanceMethod(cls, swizzled);
    BOOL didAddMethod = class_addMethod(cls, swizzled, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(cls, swizzled, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

- (void)yz_swizzlingClass:(Class)cls originalSelector:(SEL)original swizzledSelecotr:(SEL)swizzled {
    Method originalMethod = class_getClassMethod(cls, original);
    Method swizzledMethod = class_getClassMethod(cls, swizzled);
    BOOL didAddMethod = class_addMethod(cls, swizzled, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(cls, swizzled, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
