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
@property (weak, nonatomic) IBOutlet UITextField *textField;
/**textField的bottom的约束*/
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;


@property (nonatomic, assign)BOOL flage;
@end

@implementation AutoLayoutChangeViewController


static const CGFloat height = 20;

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
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.bgView addSubview:redView];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textField.mas_bottom).with.offset(height);
        make.left.right.equalTo(self.bgView);
        make.height.mas_equalTo(height);
        
        make.bottom.equalTo(self.bgView.mas_bottom).with.offset(-height);
    }];
    
   
    
}


- (IBAction)sure:(id)sender
{
    
    [UIView animateWithDuration:0.5 animations:^{
        [self addView];

    }];
}




@end
