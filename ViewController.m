//
//  ViewController.m
//  delegation_ex
//
//  Created by Mariann Thomas on 8/13/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "ViewController.h"
#import "EditingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)enterAction:(UIButton *)sender {
    EditingViewController *retrieveNameViewController = [[EditingViewController alloc] initWithNibName:@"EditingViewController" bundle:[NSBundle bundleForClass:[EditingViewController class]]];
    retrieveNameViewController.delegate = self;
    [self.navigationController pushViewController:retrieveNameViewController animated:YES];
}

-(void)retriveFirstName:(NSString *)firstName{
    self.firstNameLabel.text = firstName;
}

-(void)retriveLastName:(NSString *)lastName{
    self.lastNameLabel.text = lastName;
}

-(void)retriveImageName:(UIImage *)picture{
    self.profileImage.image = picture;
}

@end
