//
//  CustomTableViewControllerEntrees.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/12/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import "CustomTableViewControllerEntrees.h"
#import "CustomTableViewCellEntrees.h"
#import "EntreesRecipe.h"
#import "DetailViewControllerEntrees.h"


@interface CustomTableViewControllerEntrees ()

@end

@implementation CustomTableViewControllerEntrees
{
    NSArray *entreesRecipes;
    NSArray *entreesSearchResults;
    UISearchController *entreesSearchController;
    //NSArray *entreesRecipeNames;
    //NSArray *entreesRecipeImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initialize entressRecipes array
    
    
    //entreesRecipeNames = @[@"spinach shells"];
    //entreesRecipeImages = @[@"spinachshells2.jpg"];
    
    EntreesRecipe *entreesRecipe1 = [EntreesRecipe new];
    entreesRecipe1.name = @"Stuffed Spinach Shells";
    entreesRecipe1.image = @"spinachshells2.jpg";
    entreesRecipe1.ingredients = [NSArray arrayWithObjects:@"1 box gluten free shells", @"ricotta cheese", @"mozzarella cheese", @"Bake 40 minutes at 350 degrees F.", nil];

    EntreesRecipe *entreesRecipe2 = [EntreesRecipe new];
    entreesRecipe2.name = @"Tuna Vegetable Dish";
    entreesRecipe2.image = @"vegetable_tuna_casserole.jpg";
    entreesRecipe2.ingredients = [NSArray arrayWithObjects:@"2 cans of tuna", @"3 carrots peeled and sliced", @"broccoli", @"corn", @"string beans", @"progresso mushroom soup", @"Preheat oven to 350 degrees F.  Bake 30 minutes at 350 degrees F.", nil];
    
    EntreesRecipe *entreesRecipe3 = [EntreesRecipe new];
    entreesRecipe3.name = @"Stuffed Peppers";
    entreesRecipe3.image = @"stuffedpeppers.jpg";
    entreesRecipe3.ingredients = [NSArray arrayWithObjects:@"2 green peppers, cut in half and deseeded", @"2 cups of gluten free white rice cooked", @"1 red pepper", @"Preheat oven to 350 degrees F.  Bake 40 minutes at 350 degrees F.", nil];
    
    entreesRecipes = [NSArray arrayWithObjects: entreesRecipe1, entreesRecipe2, entreesRecipe3, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    entreesSearchController = [[UISearchController alloc]
                        initWithSearchResultsController:nil];
    [entreesSearchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = entreesSearchController.searchBar;
    self.definesPresentationContext = YES;
    
    entreesSearchController.searchResultsUpdater = self;
    entreesSearchController.dimsBackgroundDuringPresentation = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  //return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if(entreesSearchController.active){
        return entreesSearchResults.count ;
    } else {
        return[entreesRecipes count];
    }


   // return [entreesRecipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell2";
    CustomTableViewCellEntrees *cell = (CustomTableViewCellEntrees *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
                //forIndexPath:indexPath];
    
    
    // Configure the cell...
    EntreesRecipe *entreesRecipe = [entreesRecipes objectAtIndex:indexPath.row];
    if (entreesSearchController.active) {
        entreesRecipe =[entreesSearchResults objectAtIndex:indexPath.row];
    } else {
        entreesRecipe = [entreesRecipes objectAtIndex:indexPath.row];
    }
    cell.entreesNameLabel.text = entreesRecipe.name;
    cell.entreesThumbnailImageView.image = [UIImage imageNamed:entreesRecipe.image];
    
    //cell.entreesNameLabel.text = [entreesRecipeNames objectAtIndex:indexPath.row];
    //cell.entreesThumbnailImageView.image = [UIImage imageNamed:[entreesRecipeImages objectAtIndex:indexPath.row]];
    return cell;
}

//UISearchResultsUpdating protocol defines method updateSearcResultsForSearchController updates when user makes changes in search bar
-(void) updateSearchResultsForSearchController:(UISearchController *)esearchController {
    
    //pass it to filterContentForSearchText method
    [self filterContentForSearchText:entreesSearchController.searchBar.text];
    
    //reload table data
    [self.tableView reloadData];
}


//new method for content filtering NSPredicate name contains [c] - the c means comparison is case sensitive
-(void)filterContentForSearchText:(NSString *)searchText {
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
    
    //with predicate defined filterArrayUsingPredicate returns new array containing objecst that match predicate
    entreesSearchResults = [entreesRecipes filteredArrayUsingPredicate:resultPredicate];
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


//[self.navigationController popViewControllerAnimated:YES];

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetailEntrees"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewControllerEntrees *destViewController = segue.destinationViewController;
        
        //destViewController.entreesRecipeName = [entreesRecipeNames objectAtIndex:indexPath.row];
        EntreesRecipe *entreesRecipe;
        if (entreesSearchController.active) {
            entreesRecipe = [entreesSearchResults objectAtIndex:indexPath.row];
        } else {
            entreesRecipe = [entreesRecipes objectAtIndex:indexPath.row];
        }
        destViewController.entreesRecipe = entreesRecipe;
        //}
  
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
