//
//  Recipes.h
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipes : NSObject

@property (nonatomic, strong) NSString *id1;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *recname;
@property (nonatomic, strong) NSString *recipe;

- (id) initWithRecId: (NSString *) RId andRecCategory: (NSString *) RCategory andRecName: (NSString *) RName andRecRecipe: (NSString *) RRecipe;

@end
