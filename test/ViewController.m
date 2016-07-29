//
//  ViewController.m
//  test
//
//  Created by gfy on 16/6/18.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import "ViewController.h"
//#import "AnswerBoardView.h"


//#import <QuartzCore/QuartzCore.h>
//#import <MediaPlayer/MediaPlayer.h>
//#import <AVFoundation/AVFoundation.h>

//#import "HBConfirmAreaView.h"
//
//
//#import "GBackView.h"
//
//#import "JCAlertView.h"
//
//#import "HBSureAlertView.h"
////#import "HBExchangeFlowersView.h"
//#import "HBExchangeFlowersViewnew.h"
//
//#import "HBTTLNotsubViewController.h"
//
//#import "HBTTLTESTViewController.h"
//
//#import "HBAlert.h"
//#import "UIColor+XQExt.h"
//
//#import "Car.h"
//#import "UIImage+Custom.h"
#import "NSArray+EM.h"
#import "NSMutableArray+EM.h"
#import "NSMutableDictionary+EM.h"

#import "TestBlockViewController.h"



@interface ViewController ()
{

    
    
    
}
@end

@implementation ViewController



-(void)safetyDict
{
//    NSArray *arr = nil;
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    [dict setObject:arr forKey:@"aaaa"];
    
//    Car *a = [[Car alloc]init];
//    [a eat];

//    UIImage *img = [UIImage imageNamed:@"beike"];
//    NSLog(@"%@",img);
//    
//    UIImageView *imgV = [[UIImageView alloc]initWithImage:img];
//    imgV.frame = CGRectMake(100, 100, 100, 100);
//    [self.view addSubview:imgV];
    
    
//    NSArray *arr = @[@"1",@"3"];
//    NSLog(@"ceshiyixia %@",[arr objectAtIndex:4]) ;
//    
//    NSMutableArray *mArr = [NSMutableArray arrayWithArray:@[@"2",@"3",@"4"]];
//    NSLog(@"mutable =  %@",[mArr objectAtIndex:4]) ;
//
//    NSMutableDictionary *ddic = [NSMutableDictionary dictionary];
//    [ddic setObject:nil forKey:@"aaa"];
//    NSLog(@"hehe = %@",[ddic objectForKey:@"aaa"]);
    
//    NSString *mm = nil;
//    NSMutableDictionary *mmdic = [NSMutableDictionary dictionary];
//    @try {
//        [mmdic setObject:mm forKey:@"213"];
//
//    }
//    @catch (NSException *exception) {
//        NSLog(@"%@",exception);
//    }
//    @finally {
//        NSLog(@"hahahah");
//    }
//    NSDictionary *dict = @{@"key":mm,@"23":@"2323"};
    
//    NSString *str = nil;
//    NSMutableArray *arr = [NSMutableArray array];
//    [arr addObject:str];
//    NSLog(@"arr = %@",arr);
    NSString *str = nil;//[NSNull null];

//    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"1",str, nil];//@[@"1",str,@"3"];
////    [arr addObject:str];
//    NSLog(@"%@",arr);
    
//    NSArray *arr = @[@"1",str,@""];
//    NSLog(@"%@",arr);
//    @try {
//        NSDictionary *dict = @{@"key":str};
//
//    }
//    @catch (NSException *exception) {
//        NSLog(@"%@",exception);
//    }
//    @finally {
//        NSLog(@"finally");
//    }
    
//    
//    NSMutableArray *arr = [NSMutableArray array];
//////    [arr addObject:str];
//////    [arr objectAtIndex:4];
//    NSArray *marr = @[@"",str,@""];
    
    
//    NSDictionary *dict = @{@"key2":@"1",@"key1":str};
//    NSLog(@"字典：%@",dict);
    
//    NSArray *arr = @[@"1",@"2",@"3"];
//    NSString *arrStr  = [arr objectAtIndex:4];
//    NSLog(@"%@",arrStr);
    
    
//    NSMutableArray *arr = [NSMutableArray array];
////    [arr addObject:@""];
//    [arr insertObject:@"1" atIndex:0];
////    [arr removeObjectAtIndex:0];
//    
//    NSString *string = [arr objectAtIndex:4];
//    NSLog(@"%@",string);
//    NSLog(@"%@",arr);
    
    NSDictionary *dict = @{@"kq":@"1",@"kp":str};
    NSLog(@"%@",dict);
    
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self safetyDict];
}
@end
