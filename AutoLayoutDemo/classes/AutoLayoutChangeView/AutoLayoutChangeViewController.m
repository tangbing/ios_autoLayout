//
//  AutoLayoutChangeViewController.m
//  AutoLayoutDemo
//
//  Created by mac on 2017/6/30.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "AutoLayoutChangeViewController.h"
#import <Masonry.h>

@interface AutoLayoutChangeViewController ()
/**背景VIew*/
@property (weak, nonatomic) IBOutlet UIView *bgView;

/**textField*/
@property (weak, nonatomic) IBOutlet UIButton *addButton;
/**textField的bottom的约束*/
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;


@property (nonatomic, assign)int flage;
@end

@implementation AutoLayoutChangeViewController


static const CGFloat kHeight = 30;
static const CGFloat kMargain = 20;

- (instancetype)initWithTitle:(NSString *)title
{
    if (self = [super init]) {
        self.hidesBottomBarWhenPushed = YES;
        self.title = title;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)addView
{
    ++self.flage;
    
    self.bottomConstraint.constant = self.flage *(kMargain + kHeight) + kMargain;
    
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImage:[UIImage imageNamed:@"send"]];
    [self.bgView addSubview:imageView];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.addButton.mas_bottom).with.offset(self.flage *(kMargain + kHeight) + kMargain);
        make.left.equalTo(self.bgView.mas_left).with.offset(kMargain);
        make.right.equalTo(self.bgView.mas_right).with.offset(-kMargain);
        make.height.mas_equalTo(kHeight);
    }];
}


- (IBAction)add:(id)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self addView];
        [self.bgView setNeedsLayout];
    }];
}




@end
