//
//  ViewController.m
//  SDKDemo-v2
//
//  Created by xiao on 17/1/5.
//  Copyright © 2017年 jeikerxiao. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

#define SC_ACCESSKEY @"888"
#define SC_SECRETKEY @"888"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *accessKeyTextField;
@property (weak, nonatomic) IBOutlet UITextField *secretKeyTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.accessKeyTextField.text = SC_ACCESSKEY;
    self.secretKeyTextField.text = SC_SECRETKEY;
}

- (IBAction)confirmBtnClick:(id)sender {
    
    NSString *accessKeyStr = self.accessKeyTextField.text;
    NSString *secretKeyStr = self.secretKeyTextField.text;
    
    if (![accessKeyStr isEqualToString:@""] &&
        ![secretKeyStr isEqualToString:@""]) {
        
        UIStoryboard *mainSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MainViewController *mainVC = [mainSB instantiateViewControllerWithIdentifier:@"Main"];
        mainVC.accessKey = accessKeyStr;
        mainVC.secretKey = secretKeyStr;
//        mainVC.WL_1 = NO;// YES:直连版血糖仪，NO:微信版血糖仪
        [self.navigationController pushViewController:mainVC animated:YES];
    }

}


@end
