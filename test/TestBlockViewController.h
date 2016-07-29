//
//  TestBlockViewController.h
//  test
//
//  Created by gfy on 16/7/29.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Test)(void);

@interface TestBlockViewController : UIViewController
@property(nonatomic,copy)Test test;

@end
