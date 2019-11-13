//
//  EditingViewController.h
//  delegation_ex
//
//  Created by Mariann Thomas on 8/13/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol retrieveNameDelegate <NSObject>
-(void)retriveFirstName:(NSString *)name1;
-(void)retriveLastName:(NSString *)name2;
-(void)retriveImageName:(UIImage *)pic;
@end





@interface EditingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNameText;
@property (weak, nonatomic) IBOutlet UITextField *lastNameText;
@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UIButton *editData;
@property (weak, nonatomic) IBOutlet UIButton *imageEdit;
@property (weak, nonatomic) id<retrieveNameDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
