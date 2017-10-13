//
//  LoginViewController.m
//  AyurvedicChef
//
//  Created by asc3 on 18/02/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "LoginViewController.h"
#import "SBJson.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loginmethod
{
    if ([[_username text] isEqualToString:@""] || [[_password text] isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"Please enter all details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    NSError *error;
    NSString *url_str = [NSString stringWithFormat:@"http://anantsoftcomputing.com/saralayur/login_ios.php?format=json&username=%@&password=%@",_username.text,_password.text];
    NSURL *url = [NSURL URLWithString:url_str];
    //  NSString *result = [NSString stringWithContentsOfURL:url encoding:NSASCIIStringEncoding error:&error];
    
    //  NSLog(@"%@,%@",result,error);
    
    NSData *data1 = [NSData dataWithContentsOfURL:url];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];
    NSLog(@"Json data will be:%@",json);
    
}
- (IBAction)AppLoginbtn:(id)sender
{
    [self loginmethod];
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"SearchRecipe"];
    [self presentViewController:vc animated:NO completion:nil];

}

- (IBAction)outtomain:(id)sender
{
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc= [storyboard instantiateViewControllerWithIdentifier:@"FBMainLogin"];
    [self presentViewController:vc animated:NO completion:nil];
}
   // @end
    @end

