//
//  ViewController.h
//  AyurvedicChef
//
//  Created by asc3 on 18/02/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *recipe_name;
@property (strong, nonatomic) IBOutlet UITextView *recipe_detail;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *detail;

@end

