//
//  RecipeResult.m
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "RecipeResult.h"

@interface RecipeResult ()

@end

@implementation RecipeResult

@synthesize Recipe,Recname;
@synthesize recipe1,rec_name;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = Recname;
    
    rec_name.text = Recname;
    recipe1.text = Recipe;

} 

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
