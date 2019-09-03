//
//  YZZombieTest.m
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import "YZZombieTest.h"

@implementation YZZombieTest

+ (void)testClassMethod {
    
    NSObject *obj = [[NSObject alloc] init];
    [obj release];
    [obj isKindOfClass:[self class]];
}

- (void)testInstanceMethod {
    
    NSObject *obj = [[NSObject alloc] init];
    [obj release];
    [obj isKindOfClass:[self class]];
}

- (void)dealloc
{
    
    NSLog(@"YZZombieTest dealloc");
    [super dealloc];
}

@end
