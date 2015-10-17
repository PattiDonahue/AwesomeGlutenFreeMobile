//
//  DetailViewController.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/11/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface DetailViewController : UIViewController
@property (nonatomic, strong)IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong)NSString *recipeName;
@end
