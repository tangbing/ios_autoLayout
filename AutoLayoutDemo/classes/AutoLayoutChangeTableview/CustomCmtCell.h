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
/**头像*/
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
/**名称*/
@property (weak, nonatomic) IBOutlet UILabel *nickLabel;
/**正文*/
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
/**创建时间*/
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
/**评论View*/
@property (weak, nonatomic) IBOutlet UIView *topCmtView;
/**评论内容*/
@property (weak, nonatomic) IBOutlet UILabel *topCmtLabel;

@property (nonatomic, strong)UserModel *usrs;

@end
