//
//  NSMutableArray+EM.m
//  test
//
//  Created by gfy on 16/7/28.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import "NSMutableArray+EM.h"
#import <objc/runtime.h>

@implementation NSMutableArray (EM)
+(void)load {
//    [super load];
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(objectAtIndex:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(em_objectAtIndex:));
    method_exchangeImplementations(fromMethod, toMethod);
    
    
    Method fromMethod1 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(addObject:));
    Method toMethod1 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(em_addObject:));
    method_exchangeImplementations(fromMethod1, toMethod1);
    
    Method fromMethod2 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(insertObject:atIndex:));
    Method toMethod2 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(em_insertObject:atIndex:));
    method_exchangeImplementations(fromMethod2, toMethod2);
    
    Method fromMethod3 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(removeObjectAtIndex:));
    Method toMethod3 = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(em_removeObjectAtIndex:));
    method_exchangeImplementations(fromMethod3, toMethod3);
    
    Method fromMethod4 = class_getInstanceMethod(objc_getClass("__NSPlaceholderArray"), @selector(initWithObjects:count:));
    Method toMethod4 = class_getInstanceMethod(objc_getClass("__NSPlaceholderArray"), @selector(em_initWithObjects:count:));
    method_exchangeImplementations(fromMethod4, toMethod4);
}

-(instancetype)em_initWithObjects:(const id  _Nonnull     __unsafe_unretained *)objects count:(NSUInteger)cnt
{
    BOOL hasNilObject = NO;
    for (NSUInteger i = 0; i < cnt; i++) {
        if ([objects[i] isKindOfClass:[NSArray class]]) {
        }
        if (objects[i] == nil || [objects[i] isEqual:[NSNull null]]) {
            hasNilObject = YES;
            #if DEBUG
                                   // 如果可以对数组中为nil的元素信息打印出来，增加更容    易读懂的日志信息，这对于我们改bug就好定位多了
            NSString *errorMsg = [NSString     stringWithFormat:@"数组元素不能为nil，其index为: %lu", i];
            NSLog(@"%@", errorMsg);
            #endif
            }
        }
        // 因为有值为nil的元素，那么我们可以过滤掉值为nil的元素
    if (hasNilObject) {
        id __unsafe_unretained newObjects[cnt];
        NSUInteger index = 0;
        for (NSUInteger i = 0; i < cnt; ++i) {
            if (objects[i] != nil && ![objects[i] isEqual:[NSNull null]]) {
                newObjects[index++] = objects[i];
                }
            }
        return [self em_initWithObjects:newObjects count:index];
        }
    return [self em_initWithObjects:objects count:cnt];
}
-(void)em_removeObjectAtIndex:(NSUInteger)index
{
    if (index>=self.count) {
        NSLog(@"remove index 超出边界");
    }
    else
    {
        [self em_removeObjectAtIndex:index];
    }
}
-(void)em_insertObject:(id) object atIndex:(NSUInteger)index
{
    if (object!=nil && self.count>=index) {
        [self em_insertObject:object atIndex:index];
    }
    else
    {
        if (object==nil) {
            NSLog(@"插入数据为nil ");
        }
        else
        {
            NSLog(@"index 超过范围");
        }
    }

}

-(void)em_addObject:(id)object
{
    if (object!=nil) {
    
        [self em_addObject:object];
    }
    else
    {
        NSLog(@"数据为nil");
    }
}
- (instancetype)em_objectAtIndex:(NSUInteger)index {
    if(self.count<=0){return nil;}
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
