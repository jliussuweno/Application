//
//  ViewController.m
//  Application
//
//  Created by Jlius Suweno on 20/11/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
     [super viewDidAppear:animated];
    
    NSString *frameworkDirPath = [[NSBundle mainBundle] privateFrameworksPath];
    NSString *frameworkBundlePath = [frameworkDirPath stringByAppendingPathComponent:@"Login.framework"];
    NSBundle *frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
    LoginViewController *loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:frameworkBundle];
    loginViewController.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:loginViewController animated:YES completion:nil];
}




@end
