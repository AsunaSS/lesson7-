//
//  SetTextViewController.h
//  lesson7
//
//  Created by 李超予 on 16/11/30.
//  Copyright © 2016年 李超予. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol secondControllerDelegate <NSObject>

- (void)sendMessage:(NSMutableArray *)msg;

@end

@interface SetTextViewController : UIViewController

@property (nonatomic,weak)id <secondControllerDelegate> delegate;

@end
