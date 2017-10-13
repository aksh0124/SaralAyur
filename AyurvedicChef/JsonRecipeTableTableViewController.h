//
//  JsonRecipeTableTableViewController.h
//  AyurvedicChef
//
//  Created by asc6 on 6/8/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeDetail.h"
#import "ViewController.h"
#import "SearchRecipiesViewController.h"

@interface JsonRecipeTableTableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *jsonarray;
@property (nonatomic, strong) NSMutableArray *recipearray;

@property (strong, nonatomic) IBOutlet UITableView *recipetable;


@property NSString *category;
@property NSString *time;
@property NSString *type;

-(void) retrieveData;

@end
