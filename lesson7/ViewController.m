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
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
//@property (nonatomic,weak)
@end

@implementation ViewController

- (void)viewDidLoad {
    //显示在first view的个人资料
    _noteLabel.numberOfLines = 0;
    [_noteLabel sizeToFit];
}

- (IBAction)changeView:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SetTextViewController *secondVC = [story instantiateViewControllerWithIdentifier:@"set"];
    //NSLog(@"%@",self.firstNameLabel.text);
    secondVC.delegate = self;
    [self presentViewController:secondVC animated:YES completion:^{
    }];
}

- (void)sendMessage:(NSMutableArray *)msg {
    self.firstNameLabel.text = msg[0];
    self.middleNameLabel.text = msg[1];
    self.lastNameLabel.text = msg[2];
    self.noteLabel.text = msg[3];
   // NSLog(@"%@",self.firstNameLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
