//
//  RecipeResult.h
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeResult : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *rec_name;
@property (strong, nonatomic) IBOutlet UITextView *recipe1;

@property (nonatomic, strong) NSString * Recname;
@property (nonatomic, strong) NSString * Recipe;


@end
