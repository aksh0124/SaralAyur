//
//  JsonRecipeTableTableViewController.m
//  AyurvedicChef
//
//  Created by asc6 on 6/8/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "JsonRecipeTableTableViewController.h"


@implementation JsonRecipeTableTableViewController
@synthesize category, time, type, jsonarray, recipearray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    self.title = @"Recipes";
    
    [self retrieveData];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return recipearray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
   // cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
  
    RecipeDetail *Recipe = [recipearray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = Recipe.recipe_name;
    cell.detailTextLabel.text = Recipe.category;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
  
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewController *vc = [[ViewController alloc]init];
    
    RecipeDetail *Recipe = [recipearray objectAtIndex:indexPath.row];
    vc.name = Recipe.recipe_name;
    vc.detail = Recipe.recipe_detail;
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


-(void)retrieveData
{
  //  SearchRecipiesViewController *srvc;
    
    NSError *error;
    NSString *strurl = [NSString stringWithFormat:@"http://anantsoftcomputing.com/saralayur/ayurrecipelist.php?format=json&category=%@&time=%@&type=%@",category,time,type];
    
    NSURL *url = [NSURL URLWithString:strurl];
    NSString *result = [NSString stringWithContentsOfURL:url encoding:NSASCIIStringEncoding error:&error];
    NSLog(@"%@%@",result,error);
    NSData *data = [result dataUsingEncoding:NSASCIIStringEncoding];
 
    jsonarray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSLog(@"%@",error);
    NSLog(@"%@",jsonarray);
    
    recipearray = [[NSMutableArray alloc] init];
    
    for (int i=0; i<jsonarray.count; i++)
    {
        NSString *Rid = [[jsonarray objectAtIndex:i] objectForKey:@"id"];
        NSString *Rname = [[jsonarray objectAtIndex:i] objectForKey:@"rec-name"];
        NSString *Rdetail = [[jsonarray objectAtIndex:i] objectForKey:@"recipe"];
        NSString *Rtype = [[jsonarray objectAtIndex:i] objectForKey:@"type"];
        NSString *Rtime = [[jsonarray objectAtIndex:i] objectForKey:@"time"];
        NSString *Rcategory = [[jsonarray objectAtIndex:i] objectForKey:@"category"];
        
        
        RecipeDetail *recipeObject = [[RecipeDetail alloc]initWithRec_id:Rid secondRec_name:Rname thirdRec_detail:Rdetail forthRec_type:Rtype fifthRec_time:Rtime sixthRec_category:Rcategory];
        
        [recipearray addObject:recipeObject];
    }
    
    [self.recipetable reloadData];
}
    


@end
