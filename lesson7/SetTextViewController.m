//
//  SetTextViewController.m
//  lesson7
//
//  Created by 李超予 on 16/11/30.
//  Copyright © 2016年 李超予. All rights reserved.
//

#import "SetTextViewController.h"

@interface SetTextViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *middleNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *noteTextField;
@property (nonatomic, weak) NSString *messageString;
@end

@implementation SetTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)saveTextAndChangeView:(id)sender {
    if ([_delegate respondsToSelector:@selector(sendMessage:)])
    {
        [ _delegate sendMessage:self.firstNameTextField.text];
    }

}

- (IBAction)clearTextButton:(id)sender {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
