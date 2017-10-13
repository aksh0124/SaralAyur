//
//  RecipeDetail.h
//  AyurvedicChef
//
//  Created by asc6 on 6/9/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipeDetail : NSObject

@property (nonatomic, strong) NSString *recipe_id;
@property (nonatomic, strong) NSString *recipe_name;
@property (nonatomic, strong) NSString *recipe_detail;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *category;;

-(id)initWithRec_id: (NSString *) Rid secondRec_name: (NSString *) Rname thirdRec_detail: (NSString *) Rdetail forthRec_type: (NSString *) Rtype fifthRec_time: (NSString *) Rtime sixthRec_category: (NSString *) Rcategory;

@end
