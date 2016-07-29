//
//  ViewController.h
//  test
//
//  Created by gfy on 16/6/18.
//  Copyright © 2016年 gfy. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <AVPlayerTouch/AVPlayerTouch.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *answerViewHeightLayout;
@property (weak, nonatomic) IBOutlet UIView *answerView;
@property (weak, nonatomic) IBOutlet UITextField *answerInputTF;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *answerViewLayoutBottom;

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *mCollectionFlowLayout;

- (IBAction)show:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *haveQuestionBtn;

@end

