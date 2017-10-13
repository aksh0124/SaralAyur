//
//  RecipeTableJson.h
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipes.h"
#import "RecipeResult.h"


@interface RecipeTableJson : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *recipetable;

@property (nonatomic, strong) NSMutableArray *json;
@property (nonatomic, strong) NSMutableArray *recipearray;

#pragma mark - Methods
- (void) retrieveData;

@property NSString *having;
@property NSString *time;
@property NSString *type;

@end
