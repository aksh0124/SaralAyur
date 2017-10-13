//
//  SignupViewController.m
//  AyurvedicChef
//
//  Created by asc3 on 18/02/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signup:(id)sender
{
    if ([[_username text] isEqualToString:@""] || [[_password text] isEqualToString:@""] || [[_re_password text] isEqualToString:@""] || [[_contact_num text] isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"Please enter all details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    else if([_password text]!=[_re_password text])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"Password doesnot matches" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    NSError *error;
    NSString *url_str = [NSString stringWithFormat:@"http://anantsoftcomputing.com/saralayur/register_ios.php?format=json&username=%@&password=%@&re_password=%@&contact_num=%@",_username.text,_password.text,_re_password.text,_contact_num.text];
    NSURL *url = [NSURL URLWithString:url_str];
    NSData *data1 = [NSData dataWithContentsOfURL:url];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];
    NSLog(@"Json data will be:%@",json);
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"StartPage"];
    [self presentViewController:vc animated:NO completion:nil];
}


- (IBAction)outtomain:(id)sender
{
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc= [storyboard instantiateViewControllerWithIdentifier:@"FBMainLogin"];
    [self presentViewController:vc animated:NO completion:nil];
}



@end
