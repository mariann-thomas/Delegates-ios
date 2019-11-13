//
//  EditingViewController.m
//  delegation_ex
//
//  Created by Mariann Thomas on 8/13/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "EditingViewController.h"

@interface EditingViewController ()

@end

@implementation EditingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)imageEditAction:(UIButton *)sender {
    self.profilePic.image = [UIImage imageNamed:@"Pic.png"];
}
- (IBAction)editAction:(UIButton *)sender {
    if (([self.delegate  respondsToSelector:@selector(retriveFirstName:)] && [self.delegate  respondsToSelector:@selector(retriveLastName:)]) && ([self.delegate  respondsToSelector:@selector(retriveImageName:)])) {
        [self.delegate retriveFirstName:self.firstNameText.text];
        [self.delegate retriveLastName:self.lastNameText.text];
        [self.delegate retriveImageName:self.profilePic.image];
        [self.navigationController popViewControllerAnimated:YES];
    }

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
