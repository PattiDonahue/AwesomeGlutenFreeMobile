//
//  DetailViewControllerEntrees.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/14/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import "DetailViewControllerEntrees.h"

@interface DetailViewControllerEntrees ()

@end

@implementation DetailViewControllerEntrees

- (void)viewDidLoad {
    [super viewDidLoad];
    //set label text with selected recipe
    
    self.title = self.entreesRecipe.name;
    self.entreesRecipeImageView.image = [UIImage imageNamed:self.entreesRecipe.image];
    NSMutableString *entreesIngredientsTextView = [NSMutableString string];
    for (NSString* ingredient in self.entreesRecipe.ingredients){
        [entreesIngredientsTextView appendFormat:@"%@\n", ingredient];
    }
    self.entreesIngredientsTextView.text =entreesIngredientsTextView;
    

    
    
    
    
    // Do any additional setup after loading the view.
    //self.entreesNameLabel.text = self.entreesRecipeName;
}

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
