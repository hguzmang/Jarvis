//
//  SimpleTableCell.h
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 06/09/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UITableViewCell.h>

@interface SimpleTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dynamicDesc;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@end
