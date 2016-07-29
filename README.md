# SwizzlingMethodDemo
利用runtime解决数组、字典的崩溃问题
### 数组的objectAtIndex  Index越界问题
``` objectivec
NSArray *arr = @[@"1",@"2",@"3"];
NSString *arrStr  = [arr objectAtIndex:4];
NSLog(@"%@",arrStr);
NSMutableArray *arr = [NSMutableArray array];
[arr objectAtIndex:4];
```
### 可变数组的insertObject Object为nil 或者 Index越界问题
``` objectivec
NSString *str = nil;
NSMutableArray *arr = [NSMutableArray array];
[arr insertObject:str atIndex:2];
```

### 可变数组的addObject Object为nil 问题
``` objectivec
NSString *str = nil;
NSMutableArray *arr = [NSMutableArray array];
[arr addObject:str];
```
### 可变数组的removeObjectAtIndex Index越界问题
``` objectivec
NSMutableArray *arr = [NSMutableArray array];
[arr removeObjectAtIndex:5];
```
### 不可变字典的初始化赋值nil的问题
``` objectivec
NSString *str = nil;
NSDictionary *dict = @{@"kq":@"1",@"kp":str};
```

### 可变字典setObject:forKey:  Object赋值nil的问题
``` objectivec
NSString *str = nil;
NSMutableDictionary *mDict = [NSMutableDictionary dictionary];
[mDict setObject:str forKey:@"123423"];
```
