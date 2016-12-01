//
//  ViewController.m
//  lesson7
//
//  Created by 李超予 on 16/11/30.
//  Copyright © 2016年 李超予. All rights reserved.
//

#import "ViewController.h"
#import "SetTextViewController.h"

@interface ViewController () <secondControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
//@property (nonatomic,weak)
@end

@implementation ViewController

- (void)viewDidLoad {
    //显示在first view的个人资料
}

- (IBAction)changeView:(id)sender {
    SetTextViewController *secondVC = [[SetTextViewController alloc]init];
    //NSLog(@"%@",self.firstNameLabel.text);
    secondVC.delegate = self;
}

- (void)sendMessage:(NSString*)msg {
    self.firstNameLabel.text = msg;
    NSLog(@"%@",self.firstNameLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
