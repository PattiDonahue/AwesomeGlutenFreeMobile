//
//  Recipe.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/17/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSArray *ingredients;
@end
