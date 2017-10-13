//
//  RecipeTableJson.m
//  AyurvedicChef
//
//  Created by asc6 on 4/19/17.
//  Copyright © 2017 asc3. All rights reserved.
//

#import "RecipeTableJson.h"
#import "SearchRecipiesViewController.h"
@interface RecipeTableJson ()

@end
/*
//#define getDataURL @"http://anantsoftcomputing.com/saralayur/ayurrecipelist.php?format=json&category=%@&time=%@&type=%@"

@implementation RecipeTableJson

@synthesize json,recipearray,recipetable,having,time,type;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"RECIPES";
    [self retrieveData];
    SearchRecipiesViewController *srvc;
    srvc.label1 = having;
    srvc.label2 = time;
    srvc.label3 = type;

    NSString *stringHaving = @"Having";
    NSString *stringTime = @"Time";
    NSString *stringType = @"Type";
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://anantsoftcomputing.com/saralayur/ayurrecipelist.php?format=json&category=%@&time=%@&type=%@"]];
    NSURLConnection *Connection = [[NSURLConnection alloc ]initWithRequest:request delegate:self] ;
    

}

-(void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data
{
    [receivedData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (receivedData)
    {
        id jsonObjects = [NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingMutableContainers error:nil];
    
        for( NSDictionary *dataDict in jsonObjects)
        {
            NSString *stringHavingID = [dataDict objectForKey:@"Having"];
            NSString *stringTimeID = [dataDict objectForKey:@"Time"];
            NSString *stringTypeID = [dataDict objectForKey:@"Type"];
            
            dict = [NSDictionary dictionaryWithObjectsAndKeys:stringHavingID, stringTimeID, stringTypeID,  nil];
            [recipearray addObject:dict];
            
        }
        [self.recipetable reloadData];
    }
    
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
    NSDictionary *tmpdict = [recipearray objectAtIndex:indexPath.row];
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }

    Recipes *currentRecipe = [recipearray objectAtIndex:indexPath.row];
    cell.textLabel.text = currentRecipe.recname;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.text = [tmpdict objectForKey:stringHaving];
    cell.textLabel.text = [tmpdict objectForKey:stringTime];
    cell.textLabel.text = [tmpdict objectForKey:stringType];
    
    return cell;
}


#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecipeResult *RR = [[RecipeResult alloc]init];
    
    Recipes *currentRecipe = [recipearray objectAtIndex:indexPath.row];
    RR.Recname = currentRecipe.recname;
    RR.Recipe = currentRecipe.recipe;
    
    [self.navigationController pushViewController:RR animated:YES];
}

#pragma mark - Methods

-(void) retrieveData
{
    NSURL *url = [NSURL URLWithString:getDataURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    recipearray = [[NSMutableArray alloc]init];
    
    for(int i=0;i<json.count;i++)
    {
        NSString *RId = [[json objectAtIndex:i] objectForKey:@"id"];
        NSString *RCategory = [[json objectAtIndex:i] objectForKey:@"category"];
        NSString *RName = [[json objectAtIndex:i] objectForKey:@"rec-name"];
        NSString *RRecipe = [[json objectAtIndex:i] objectForKey:@"recipe"];
        
        Recipes *myrecipes = [[Recipes alloc]initWithRecId:RId andRecCategory:RCategory andRecName:RName andRecRecipe:RRecipe];
        [recipearray addObject:myrecipes];
        
    }
    
    [self.recipetable reloadData];
    
}


@end
*/
