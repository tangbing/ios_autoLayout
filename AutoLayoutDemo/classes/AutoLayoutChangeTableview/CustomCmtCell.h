//
//  CustomCell.h
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UserModel;
@interface CustomCmtCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nickLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIView *topCmtView;
@property (weak, nonatomic) IBOutlet UIView *topCmtLabel;

@property (nonatomic, strong)UserModel *usrs;

@end
