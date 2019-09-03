//
//  YZZombie.m
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import "YZZombie.h"

@implementation YZZombie

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    NSLog(@"僵尸对象： %p  调用了函数： %@",self,NSStringFromSelector(sel));
    return [[NSObject new] methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:[NSObject new]];
}

@end
