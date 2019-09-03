//
//  YZMethodSwizzling.h
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YZMethodSwizzling : NSObject


/**
 swizzling a instance method

 @param cls targetClass
 @param original original selector
 @param swizzled swizzled selector
 */
+ (void)yz_swizzlingInstance:(Class)cls originalSelector:(SEL)original swizzledSelecotr:(SEL)swizzled;


/**
 swizzling a class method
 
 @param cls targetClass
 @param original original selector
 @param swizzled swizzled selector
 */
+ (void)yz_swizzlingClass:(Class)cls originalSelector:(SEL)original swizzledSelecotr:(SEL)swizzled;

@end

NS_ASSUME_NONNULL_END
