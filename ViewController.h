//
//  ViewController.h
//  delegation_ex
//
//  Created by Mariann Thomas on 8/13/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditingViewController.h"

@interface ViewController : UIViewController <retrieveNameDelegate>
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UIButton *EnterButton;


@end


