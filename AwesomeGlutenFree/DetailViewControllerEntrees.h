//
//  DetailViewControllerEntrees.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/14/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EntreesRecipe.h"

//#import "DetailViewControllerEntrees.h"

@interface DetailViewControllerEntrees : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *entreesNameLabel;
//@property (nonatomic, strong) NSString *entreesRecipeName;

@property (weak, nonatomic) IBOutlet UIImageView *entreesRecipeImageView;
@property (weak, nonatomic) IBOutlet UITextView *entreesIngredientsTextView;

@property (nonatomic, strong) EntreesRecipe *entreesRecipe;
@end
