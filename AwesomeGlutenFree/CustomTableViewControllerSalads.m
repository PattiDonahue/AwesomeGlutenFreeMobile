//
//  CustomTableViewControllerSalads.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/15/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import "CustomTableViewControllerSalads.h"
#import "CustomTableViewCellSalads.h"
#import "DetailViewControllerSalads.h"
#import "SaladsRecipe.h"

@interface CustomTableViewControllerSalads ()

@end

@implementation CustomTableViewControllerSalads
{
    NSArray *saladsRecipes;
    NSArray *saladsSearchResults;
    UISearchController *saladsSearchController;
    //NSArray *saladsRecipeNames;
    //NSArray *saladsRecipeImages;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    SaladsRecipe *saladsRecipe1 = [SaladsRecipe new];
    saladsRecipe1.name = @"Strawberry Avocado Salad";
    saladsRecipe1.image = @"StrawberryAvoSalad.jpg";
    saladsRecipe1.ingredients = [NSArray arrayWithObjects:@"2 boxes cutup strawberries", @"fresh spinach", @"1 cut-up orange", @"Mix.", nil];
    
    SaladsRecipe *saladsRecipe2 = [SaladsRecipe new];
    saladsRecipe2.name = @"Watermelon Feta Salad";
    saladsRecipe2.image = @"watermelonfetasalad.jpg";
    saladsRecipe2.ingredients = [NSArray arrayWithObjects:@"3 cups cubed watermelon", @"Mix in a large bowl", nil];

    
    //saladsRecipeNames = @[@"Avocado Salad"];
    //saladsRecipeImages = @[@"Avocado_Salad"];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    saladsRecipes = [NSArray arrayWithObjects:saladsRecipe1, saladsRecipe2, nil];
    
    saladsSearchController = [[UISearchController alloc]
                        initWithSearchResultsController:nil];
    [saladsSearchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = saladsSearchController.searchBar;
    self.definesPresentationContext = YES;
    
    saladsSearchController.searchResultsUpdater = self;
    saladsSearchController.dimsBackgroundDuringPresentation = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (saladsSearchController.active){
        return saladsSearchResults.count;
    } else {
        return [saladsRecipes count];
    //return [saladsRecipeNames count];
}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell3";
    CustomTableViewCellSalads *cell = (CustomTableViewCellSalads *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        //forIndexPath:indexPath];
    
    // Configure the cell...
    SaladsRecipe *saladsRecipe = [saladsRecipes objectAtIndex:indexPath.row];
    if (saladsSearchController.active) {
        saladsRecipe =[saladsSearchResults objectAtIndex:indexPath.row];
    } else {
        saladsRecipe = [saladsRecipes objectAtIndex:indexPath.row];
    }
    cell.saladsNameLabel.text = saladsRecipe.name;
    cell.saladsThumbnailImageView.image = [UIImage imageNamed:saladsRecipe.image];
    

    
    //cell.saladsNameLabel.text = [saladsRecipeNames objectAtIndex:indexPath.row];
    //cell.thumbnailImageView.image = [UIImage imageNamed:[saladsRecipeImages objectAtIndex:indexPath.row]];
    return cell;
}
    //UISearchResultsUpdating protocol defines method updateSearcResultsForSearchController updates when user makes changes in search bar
    -(void) updateSearchResultsForSearchController:(UISearchController *)ssearchController {
        
        //pass it to filterContentForSearchText method
        [self filterContentForSearchText:saladsSearchController.searchBar.text];
        
        //reload table data
        [self.tableView reloadData];
    }
    
    
    //new method for content filtering NSPredicate name contains [c] - the c means comparison is case sensitive
    -(void)filterContentForSearchText:(NSString *)searchText {
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
        
        //with predicate defined filterArrayUsingPredicate returns new array containing objecst that match predicate
        saladsSearchResults = [saladsRecipes filteredArrayUsingPredicate:resultPredicate];
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 if ([segue.identifier isEqualToString:@"showRecipeDetailSalads"]) {
 NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
 DetailViewControllerSalads *destViewController = segue.destinationViewController;
 //destViewController.saladsRecipeName = [saladsRecipeNames objectAtIndex:indexPath.row];
     
     SaladsRecipe *saladsRecipe;
     if (saladsSearchController.active) {
         saladsRecipe = [saladsSearchResults objectAtIndex:indexPath.row];
     } else {
         saladsRecipe = [saladsRecipes objectAtIndex:indexPath.row];
     }
     destViewController.saladsRecipe = saladsRecipe;

 }
 }
 
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
