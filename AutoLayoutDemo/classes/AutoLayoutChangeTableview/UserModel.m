
//
//  UserModel.m
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

static const CGFloat kMargain = 10;
static const CGFloat kIconHeight = 35;

- (CGFloat)cellHeight
{
    if (!_cellHeight) {
        
        // 文字的最大尺寸
        CGSize maxSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - 2 * kMargain, MAXFLOAT);
        // 计算文字的高度
        CGFloat textH = [self.conetent boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} context:nil].size.height;
        
        _cellHeight = kMargain + textH + kIconHeight;
        
        if (self.comment) {
            
        }
        
    }
    return _cellHeight;
}

@end
