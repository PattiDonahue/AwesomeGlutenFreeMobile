//
//  CustomTableViewCell.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 10/11/15.
//  Copyright © 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@end
