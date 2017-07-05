//
//  TestDemoTableViewCell.h
//  AutoLayoutDemo
//
//  Created by mac on 2017/7/4.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestDemoTableViewCell : UITableViewCell
@property (nonatomic, copy)void (^clickBlock)(NSInteger);
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;

@end
