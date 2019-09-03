//
//  ViewController.m
//  PerformanceOptimization
//
//  Created by 张义镇 on 2019/9/3.
//  Copyright © 2019 张义镇. All rights reserved.
//

#import "ViewController.h"
#import "YZZombieTest.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [YZZombieTest testClassMethod];
    
    NSLog(@"-------------");
    [[YZZombieTest new] testInstanceMethod];
    
}


@end
