//
//  CustomTableTableViewController.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/10/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import "CustomTableTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableTableViewController ()

@end

@implementation CustomTableTableViewController
{
    //NSArray *recipes;
    NSArray *recipeNames;
    NSArray *recipeImages;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    recipeNames = @[@"Chocolate Sugar Cookies"];
    recipeImages = @[@"chocsugarcookies.JPG"];
    
    //Initialize the Recipes array
    /*
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Chocolate Sugar Cookies";
    recipe1.image = @"chocsugarcookies.JPG";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 cups of gluten free flour (Better Batter or Arrowhead Mills)", @"1 tsp baking soda", @"1/4 tsp. salt", @"1 cup butter (2 sticks)", @"1 cup sugar", @"1 tsp. vanilla (McCormick)", @"1 egg",@"3 squares unsweetened chocolate (Baker's)", @"1 tsp. xanthan gum (Bob's Red Mill)", @"additional sugar", @"Melt chocolate and butter. Stir in sugar, egg and vanilla. Mix in gluten free flour, baking soda, xanthan gum and salt. The xanthan gum adds elasticity to the cookies. Refrigerate for 30 min.  Preheat oven to 350 degrees. Then shape dough into 1 in. balls, roll in the additional sugar, then place them 2 in. apart on the parchment paper that has been placed on your cookie sheet.  Flatten them lightly.  Bake 10 minutes at 350 degrees F.  Let them cool slightly before moving them.", nil];
    
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Oatmeal Craisin Cookies";
    recipe2.image = @"oatmealcookies.JPG";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 1/2 cups of gluten free flour (Better Batter or Arrowhead Mills)", @"1 tsp baking soda", @"1/2 tsp. salt", @"1 cup butter (2 sticks)", @"1 cup brown sugar", @"1/2 cup sugar", @"1 tsp. vanilla (McCormick)", @"2 eggs",@"3 cups gluten free oatmeal(Bob's Red Mill)", @"1 cup raisins", @"1 cup craisins (Ocean Spray)", @"1 tsp. cinnamon", @"1 tsp. xanthan gum (Bob's Red Mill)", @"Preheat oven to 350 degrees F. Melt butter and add sugars, eggs, and vanilla and mix well in a large bowl.  Combine the gluten free flour, gluten free oatmeal, baking soda, cinnamon, salt, xanthan gum, raisins and craisins and mix well. Shape into balls, then place them 2 in. apart on the parchment paper that has been placed on your cookie sheet.  Flatten them lightly.  Bake 10 minutes at 350 degrees F.  Let them cool slightly before moving them.", nil];
    
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Chocolate Mountain";
    recipe3.image = @"ChocolateMountain.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"Gluten free chocolate cake mix (King Arthur)", @"2 instant chocolate pudding mixes (Jello)", @"1 pint heavy cream", @"See cake mix and chocolate pudding for other ingredients", @"Make 2 - 8 or 9 in chocolate cakes, then make the chocolate pudding. Whip heavy cream with mixer and 2 tsp. sugar and 1 tsp. vanilla until it is stiff.  Use a large clear pyrex bowl if possible to layer chocolate cake, 1/2 the chocolate pudding, 1/2 the heavy cream, then duplicate, another chocolate cake, rest of chocolate pudding and rest of heavy cream.", nil];
    
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Lemon Bars by Rebecca Reilly";
    recipe4.image = @"lemonbars.JPG";
    recipe4.ingredients = [NSArray arrayWithObjects:@"1 cup of gluten free flour (Better Batter)", @"1/2 cup gluten free almond flour", @"1/3 cup confectioners' sugar", @" 1/4 tsp. xanthan gum (Bob's Red Mill)", @"1/8 tsp. of salt", @"1 stick of butter", @"3 eggs", @"1 1/2 cups sugar", @"1/3 cup fresh lemon juice", @"confectioners' sugar for dusting", @"Preheat oven to 325 degrees F.  Lightly grease 8 in. square pan. Make the crust by mixing the gluten free flour, gluten free almond flour, confectioners'sugar, xanthan gum, salt and slightly melted butter. Press the mixture into lightly greased 8 in. square pan and bake for 20 minutes.  Make the filling by beating the eggs and sugars together.  Add the lemon juice.  Pour this filling over the hot crust and bake for 20 more minutes.  Cool then dust with confectioners' sugar and cut into squares.", nil];
    
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Chocolate Chip Cookies";
    recipe5.image = @"chocolatechipcookies.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:@"2 cups of gluten free flour (Better Batter)", @"1 tsp baking soda", @"1 tsp. salt", @"1 cup butter (2 sticks)", @"3/4 cup sugar", @"3/4 brown sugar", @" 1 tsp. vanilla (McCormick)", @"2 eggs",@"2 cups semi-sweet chocolate chips (Nestle Toll House)", @"1 tsp. xanthan gum (Bob's red Mill)", @"Mix flour, baking soda, salt, xanthan gum.  Then in a larger bowl mix melted butter, sugars, vanilla and eggs.  Add in the flour mixture and the chocolate chips.  Shape into balls, then place them 2 in. apart on the parchment paper that has been placed on your cookie sheet.  Flatten them slightly.  Bake 10 minutes at 350 degrees F.  Let them cool slightly before moving them.",  nil];
    
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Carrot Cake Bars";
    recipe6.image = @"carrotcakebars2.jpg";
    recipe6.ingredients = [NSArray arrayWithObjects:@"1 1/2 cups gluten free flour (Better Batter)", @"1/4 cup cornstarch", @"2/3 cup flour", @" 2 tsp. baking soda", @"1 tsp. cinnamon", @"1/2 tsp. nutmeg", @"1/2 tsp. salt", @"3/4 cup applesauce", @"1/2 cup vegetable oil", @"3 eggs", @"3 cups grated carrots", @"1/2 cup butter", @"8 oz. cream cheese (Philadelphia)", @"2-3 cups confectioners' sugar", @"1 tsp. vanilla extract", @"Preheat oven to 350 degrees F. Lightly grease 8 in. square pan. Combine gluten free flour, cornstarch, sugar, baking soda, cinnamon, nutmeg and salt.  In a smaller bowl combine applesauce, oil and eggs.  Combine both bowls, mix well and add the grated carrots.  Pour the batter into the pan.  Bake for 70 minutes at 350 degrees F.  Cool completely.  To make cream cheese icing, mix 1 stick of butter (room temperature) and 8 oz. of cream cheese (room temperature), then add the powdwered sugar and vanilla extract.  Spread over the carrot cake bars and then cut into squares.",  nil];
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"Cheesecake";
    recipe7.image = @"cheesecake2.JPG";
    recipe7.ingredients = [NSArray arrayWithObjects:@"gluten free graham crackers (Kinnikinnick)", @"1/4 cup sugar", @"6 tblsp. melted butter", @"5 - 8 oz. packages of cream cheese (Philadelphia)", @"1 3/4 cup sugar", @"3 tblsp. gluten free flour", @"1/4 tsp. salt", @"5 eggs", @"2 egg yolks", @" 2 tblsp. milk", @"Preheat oven to 475 degree F. Leave cream cheese out on table to soften, while making crust.  Grease bottom of 10 in. springform pan and dust with glutenfree flour. Crumble graham crackers in a chopper or blender then mix with 1/4 cup sugar and melted butter.  Press into bottom of springform pan for crust.  Place in refrigerator until filling is ready.  Beat softened cream cheese in a large bowl, add sugar, gluten free flour, salt, eggs and milk.  Pour cream cheese filling into springform pan.  Then place  cream cheese cake in oven at 475 degrees F. for 10 min.  Lower the temperature to 300 degrees F. for 50 minutes more.  Turn off the oven.  Don't open the door.  Leave cheesecake in the oven for another 15-20 minutes.  Then take it out and place on wire rack so it cools down slowly, then refrigerate.", nil];
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Berry Crisp";
    recipe8.image = @"berrycrisp.JPG";
    recipe8.ingredients = [NSArray arrayWithObjects:@"4 cups of mixed berries", @"2 tblsp. cornstarch", @"1/2 cup gluten free flour", @"1/2 cup gluten free oatmeal (Bob's Red Mill)", @"1/4 cup sugar", @"1/4 cup melted butter", @" 1 tsp. cinnamon", @"Wash and pour mixed berries with cornstarch into baking dish.  Mix gluten free flour, oatmeal, sugarbutter and cinnamon.  Sprinkle this topping over the berries.  Bake in the oven for 30 min. at 350 degrees F.", nil];
    
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, nil];
    */
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Incomplete implementation, return the number of sections
    //{
        return 1;
   }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        return[recipeNames count];
    }

   // if (searchController.active){
     //   return searchResults.count;
    //} else {
        //return[recipes count];
    //}
    //}




//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    //CustomTableViewCell *cell = (RecipeTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // Configure the cell...
    //if (cell ==nil){
        //cell = [[RecipeTableCell alloc] initWithStyle:UITableViewCellStyrleDefault reuseIdentifier:CellIdentifier];
    //}
    //display recipe in table cell
    
    //Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    
    //cell.nameLabel.text = recipe.name;
    //cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
  
  //@[recipeImages objectAtIndex:indexPath.row]];
    
    return cell;
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


//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   if ([segue.identifier isEqualToString:@"showRecipeDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
       DetailViewController *destViewController = segue.destinationViewController;
       
       destViewController.recipeName = [recipeNames objectAtIndex:indexPath.row];
       
    //    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    //    destViewController.recipe = recipe;
    //}
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
}

@end
