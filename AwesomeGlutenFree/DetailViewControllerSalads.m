//
//  DetailViewControllerSalads.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/16/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import "DetailViewControllerSalads.h"

@interface DetailViewControllerSalads ()

@end

@implementation DetailViewControllerSalads

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //set label text with selected recipe
    
    self.title = self.saladsRecipe.name;
    self.saladsImageView.image = [UIImage imageNamed:self.saladsRecipe.image];
    NSMutableString *saladsIngredientsTextView = [NSMutableString string];
    for (NSString* ingredient in self.saladsRecipe.ingredients){
        [saladsIngredientsTextView appendFormat:@"%@\n", ingredient];
    }
    self.saladsIngredientsTextView.text =saladsIngredientsTextView;
    

    
    // Do any additional setup after loading the view.
    
    
    //self.saladsNameLabel.text = self.saladsRecipeName;
   // self.saladsImageView.image = [UIImage imageNamed:self.saladRecipe.image];
    //NSMutableString *ingredientsTextView = [NSMutableString string];
   // for (NSString* ingredient in self.recipe.ingredients) {
    //    [ingredientsTextView appendFormat:@"%@\n", ingredient];
    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
