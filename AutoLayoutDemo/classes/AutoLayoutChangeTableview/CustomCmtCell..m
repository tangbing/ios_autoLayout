//
//  CustomCell.m
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "CustomCmtCell.h"
#import "UserModel.h"
@implementation CustomCmtCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setUsrs:(UserModel *)usrs
{
    _usrs = usrs;
    [self.iconImage setImage:[UIImage imageNamed:@"test"]];
    self.nickLabel.text = usrs.nick;
    self.contentLabel.text = usrs.conetent;
    self.timeLabel.text = @"2017-07-01 15:30";
}


@end
