//
//  UIButton+Swizzling.h
//  test
//
//  Created by gfy on 16/7/28.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import <UIKit/UIKit.h>
#define defaultInterval 0.5
@interface UIButton (Swizzling)
@property (nonatomic, assign) NSTimeInterval timeInterval;
@end
