//
//  TestBlockViewController.m
//  test
//
//  Created by gfy on 16/7/29.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import "TestBlockViewController.h"

@implementation TestBlockViewController
//-(void)blockTest
//{
//    _test();
//}

-(void)abck{
    
    NSLog(@"呵呵");
}
-(void)dealloc
{
    NSLog(@"dealloc");
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _test();
    });
}
@end
