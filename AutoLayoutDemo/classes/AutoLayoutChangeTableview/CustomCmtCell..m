//
//  CustomCell.m
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "CustomCmtCell.h"
#import "UserModel.h"
#import "cmtModel.h"
#import <UIImageView+WebCache.h>
@implementation CustomCmtCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setUsrs:(UserModel *)usrs
{
    _usrs = usrs;
    
    [self.iconImage sd_setImageWithURL:[NSURL URLWithString:usrs.profile_image]];
    self.nickLabel.text = usrs.name;
    self.contentLabel.text = usrs.text;
    self.timeLabel.text = usrs.created_at;
    
    // 最热评论
    if (usrs.top_cmt) {
        self.topCmtView.hidden = NO;
        [self.topCmtLabel setText:usrs.top_cmt.content];
    } else {
        self.topCmtView.hidden = YES;
    }
}

@end
