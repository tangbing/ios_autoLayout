//
//  TestDemoTableViewCell.m
//  AutoLayoutDemo
//
//  Created by mac on 2017/7/4.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "TestDemoTableViewCell.h"

@implementation TestDemoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)add:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (self.clickBlock) {
        self.clickBlock(btn.tag);
    }
}

@end
