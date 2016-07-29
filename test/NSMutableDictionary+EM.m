//
//  NSMutableDictionary+EM.m
//  test
//
//  Created by gfy on 16/7/28.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import "NSMutableDictionary+EM.h"
#import <objc/runtime.h>
@implementation NSMutableDictionary (EM)

+ (void)load {
    
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(setObject:forKey:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(em_setObject:forKey:));
    method_exchangeImplementations(fromMethod, toMethod);

    
    Method fromMethod1 = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(initWithObjects:forKeys:count:));
    Method toMethod1 = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(em_initWithObjects:forKeys:count:));
    method_exchangeImplementations(fromMethod1, toMethod1);
    
}
-(instancetype)em_initWithObjects:(const id  _Nonnull __unsafe_unretained *)objects forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys count:(NSUInteger)cnt
{


    BOOL hasNilObject = NO;
    id __unsafe_unretained newObjects[cnt];
//    id __unsafe_unretained newKeys[cnt];

    for (NSUInteger i = 0; i < cnt; i++) {
//        if ([objects[i] isKindOfClass:[NSNull class]]) {
//            NSLog(@"还真是啊");
//        }
        
//        NSLog(@"开始：object==%@===key ==%@==%lld",objects[i] ,keys[i],cnt);

        if (objects[i] == nil) {
            hasNilObject = YES;
#if DEBUG
            // 如果可以对数组中为nil的元素信息打印出来，增加更容    易读懂的日志信息，这对于我们改bug就好定位多了
            NSString *errorMsg = [NSString     stringWithFormat:@"字典初始化元素不能为nil，其index为: %lu", i];
            NSLog(@"%@", errorMsg);
            newObjects[i] = @"";

#endif
        }
        else
        {
            newObjects[i] = objects[i];
        }
        
    }
    @try {
        return [self em_initWithObjects:newObjects forKeys:keys count:cnt];
    }
    @catch (NSException *exception) {
        NSLog(@"意想不到：%@",exception);
    }
    @finally {
        
    }
    return nil;
//
//    NSLog(@"_______________________________");
//    // 因为有值为nil的元素，那么我们可以过滤掉值为nil的元素
//    if (hasNilObject) {
//        id __unsafe_unretained newObjects[cnt];
//        id __unsafe_unretained newKeys[cnt];
//
//        NSUInteger index = 0;
//        for (NSUInteger i = 0; i < cnt; ++i) {
//            if (objects[i] != nil && ![objects[i] isEqual:[NSNull null]]) {
//                newObjects[index++] = objects[i];
//                newKeys[index++] = keys[i];
//            }
//        }
//        
//        NSLog(@"结果：object==%@===key ==%@",newObjects ,newKeys);
//        return [self em_initWithObjects:newObjects forKeys:newKeys count:cnt];
//    }
//    return [self em_initWithObjects:objects forKeys:keys count:cnt];
    
}
- (void)em_setObject:(id)emObject forKey:(NSString *)key {
    if (emObject == nil) {
        @try {
            [self em_setObject:emObject forKey:key];
        }
        @catch (NSException *exception) {
            NSLog(@"---------- %s Crash Because Method %s  ----------\n", class_getName(self.class), __func__);
            NSLog(@"%@", [exception callStackSymbols]);
            emObject = [NSString stringWithFormat:@""];
            [self em_setObject:emObject forKey:key];
        }
        @finally {}
    }else {
        [self em_setObject:emObject forKey:key];
    }
}
@end
