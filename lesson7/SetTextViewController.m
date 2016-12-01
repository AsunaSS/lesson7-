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
//@property (nonatomic, weak) NSString *messageString;
@end

@implementation SetTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _noteTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
}

- (IBAction)saveTextAndChangeView:(id)sender {
    NSMutableArray *messageString = [NSMutableArray arrayWithCapacity:6];
    [messageString addObject:self.firstNameTextField.text];
    [messageString addObject:self.middleNameTextField.text];
    [messageString addObject:self.lastNameTextField.text];
    [messageString addObject:self.noteTextField.text];
    if ([_delegate respondsToSelector:@selector(sendMessage:)])
    {
        [ _delegate sendMessage:messageString];
    }
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];

}

- (IBAction)clearTextButton:(id)sender {
    self.firstNameTextField.text = @"";
    self.middleNameTextField.text = @"";
    self.lastNameTextField.text = @"";
    self.noteTextField.text = @"";
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
