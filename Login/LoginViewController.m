//
//  LoginViewController.m
//  Login
//
//  Created by Jlius Suweno on 20/11/20.
//

#import "LoginViewController.h"

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
}
- (IBAction)registerPressed:(id)sender {
    NSString *frameworkDirPath = [[NSBundle mainBundle] privateFrameworksPath];
    NSString *frameworkBundlePath = [frameworkDirPath stringByAppendingPathComponent:@"Register.framework"];
    NSBundle *frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
//    RegisterViewController *registerViewController = [[RegisterViewController alloc] initWithNibName:@"RegisterViewController" bundle:frameworkBundle];
//    LoginViewController *loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:frameworkBundle];
//    RegisterViewController *registerViewController = [[RegisterViewController alloc] initWithNibName:@"RegisterViewController" bundle:frameworkBundle];
//    registerViewController.modalPresentationStyle = UIModalPresentationOverFullScreen;
//    [self presentViewController:registerViewController animated:YES completion:nil];
}
@end
