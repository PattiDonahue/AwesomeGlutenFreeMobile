//
//  DetailViewControllerSalads.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/16/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "SaladsRecipe.h"

@interface DetailViewControllerSalads : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *saladsNameLabel;
//@property (nonatomic, strong) NSString *saladsRecipeName;
@property (weak, nonatomic) IBOutlet UIImageView *saladsImageView;
@property (weak, nonatomic) IBOutlet UITextView *saladsIngredientsTextView;
@property (nonatomic, strong)SaladsRecipe *saladsRecipe;
@end
