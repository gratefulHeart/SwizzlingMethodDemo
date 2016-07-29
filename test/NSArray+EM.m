//
//  NSArray+EM.m
//  test
//
//  Created by gfy on 16/7/28.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import "NSArray+EM.h"
#import <objc/runtime.h>

@implementation NSArray (EM)
+(void)load {
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndex:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(em_objectAtIndex:));
    method_exchangeImplementations(fromMethod, toMethod);
}

- (id)em_objectAtIndex:(NSUInteger)index {

    if(self.count<=0){
        return nil;
    }
    
    if (self.count - 1 < index) {
        @try {
//            return [self em_objectAtIndex:self.count-1];
            return[self em_objectAtIndex:index];
        }
        @catch (NSException *exception) {
            NSLog(@"-------- %s Crash Because Method %s -------\n",class_getName(self.class),__func__);
            NSLog(@"%@", [exception callStackSymbols]);
            return nil;
        }
        @finally {
            
        }
    }else {
        return [self em_objectAtIndex:index];
    }
}
@end
