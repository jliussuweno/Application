//
//  LoginViewController.m
//  Login
//
//  Created by Jlius Suweno on 20/11/20.
//

#import "LoginViewController.h"
#import <Register/Register.h>
#import "RegisterViewController.h"
//#import <Home/Home.h>
#import "HomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)loginPressed:(id)sender {
    NSString *userID = _userIDTextField.text;
    NSString *password = _passwordTextField.text;
    NSLog(@"userID = %@", userID);
    NSLog(@"password = %@", password);
    if ([userID  isEqual: @"admin"] && [password  isEqual: @"123"]) {
        [self ShowAlert:@"Berhasil!"];
//        NSString *frameworkDirPath = [[NSBundle mainBundle] privateFrameworksPath];
//        NSString *frameworkBundlePath = [frameworkDirPath stringByAppendingPathComponent:@"Home.framework"];
//        NSBundle *frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
//        HomeViewController *homeViewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:frameworkBundle];
//        homeViewController.modalPresentationStyle = UIModalPresentationOverFullScreen;
//        homeViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//        [self presentViewController:homeViewController animated:YES completion:nil];
    } else {
        [self ShowAlert:@"Maaf, user ID dan password Anda salah, silahkan ulangi kembali."];
    }
}
- (IBAction)registerPressed:(id)sender {
//    NSString *frameworkDirPath = [[NSBundle mainBundle] privateFrameworksPath];
//    NSString *frameworkBundlePath = [frameworkDirPath stringByAppendingPathComponent:@"Register.framework"];
//    NSBundle *frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
//    RegisterViewController *registerViewController = [[RegisterViewController alloc] initWithNibName:@"RegisterViewController" bundle:frameworkBundle];
//    registerViewController.modalPresentationStyle = UIModalPresentationOverFullScreen;
//    registerViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    [self presentViewController:registerViewController animated:YES completion:nil];
}

- (void) ShowAlert:(NSString *)Message {
    UIAlertController * alert=[UIAlertController alertControllerWithTitle:nil
                                                                  message:@""
                                                           preferredStyle:UIAlertControllerStyleAlert];
    UIView *firstSubview = alert.view.subviews.firstObject;
    UIView *alertContentView = firstSubview.subviews.firstObject;
    for (UIView *subSubView in alertContentView.subviews) {
        subSubView.backgroundColor = [UIColor colorWithRed:100/255.0f green:0/255.0f blue:254/255.0f alpha:1.0f];
    }
    NSMutableAttributedString *AS = [[NSMutableAttributedString alloc] initWithString:Message];
    [AS addAttribute: NSForegroundColorAttributeName value: [UIColor whiteColor] range: NSMakeRange(0,AS.length)];
    [alert setValue:AS forKey:@"attributedTitle"];
    [self presentViewController:alert animated:YES completion:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:YES completion:^{
        }];
    });
}
@end
