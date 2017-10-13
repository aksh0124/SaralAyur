//
//  Recipes.m
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "Recipes.h"

@implementation Recipes

@synthesize id1,category,recname,recipe;

- (id) initWithRecId:(NSString *)RId andRecCategory:(NSString *)RCategory andRecName:(NSString *)RName andRecRecipe:(NSString *)RRecipe
{
    self=[super init];
    if(self)
    {
        id1=RId;
        category=RCategory;
        recname=RName;
        recipe=RRecipe;
    }
    return  self;
}

@end
