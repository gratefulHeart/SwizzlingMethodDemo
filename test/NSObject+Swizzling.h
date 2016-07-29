//
//  NSObject+Swizzling.h
//  test
//
//  Created by gfy on 16/7/28.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)
+ (void)swizzleSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector; 
@end
