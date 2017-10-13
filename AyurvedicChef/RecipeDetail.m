//
//  RecipeDetail.m
//  AyurvedicChef
//
//  Created by asc6 on 6/9/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "RecipeDetail.h"

@implementation RecipeDetail

@synthesize recipe_id, recipe_name, recipe_detail, type, time, category;

-(id)initWithRec_id:(NSString *)Rid secondRec_name:(NSString *)Rname thirdRec_detail:(NSString *)Rdetail forthRec_type:(NSString *)Rtype fifthRec_time:(NSString *)Rtime sixthRec_category:(NSString *)Rcategory
{
    self = [super init];
    if (self)
    {
        recipe_id = Rid;
        recipe_name = Rname;
        recipe_detail = Rdetail;
        type = Rtype;
        time = Rtime;
        category = Rcategory;
    }
    return self;
}

@end
