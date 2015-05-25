//
//  ViewController.m
//  StretchPasscode
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)presentAlertButtonMethod
{
    NSLog(@"Present the altert controller here");
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Login" message:@"plase enter username and password" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    }];
    
    UIAlertAction *cancelAlertAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"cancel");
    }];
    [alertController addAction:cancelAlertAction];
    
    UIAlertAction *loginAlertAction = [UIAlertAction actionWithTitle:@"Login" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"login");
        if ([((UITextField *)(alertController.textFields[0])).text isEqualToString:@"doug"] &&[((UITextField *)(alertController.textFields[1])).text isEqualToString:@"voss"]) {
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            self.view.backgroundColor = [UIColor redColor];
        }
    }];
    [alertController addAction:loginAlertAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
