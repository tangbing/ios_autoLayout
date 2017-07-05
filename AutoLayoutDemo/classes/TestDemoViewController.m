//
//  TestDemoViewController.m
//  AutoLayoutDemo
//
//  Created by mac on 2017/7/4.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "TestDemoViewController.h"
#import "UIView+XMGExtension.h"
#import "TestDemoTableViewCell.h"
#import <Masonry.h>
@interface TestDemoViewController ()
@property (weak, nonatomic) IBOutlet UIView *addView;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;

@property (nonatomic, assign)int flage;
@end

@implementation TestDemoViewController

static NSString * const commentID = @"commentID";
static const CGFloat kHeight = 30;
static const CGFloat kMargain = 20;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"testDemo";
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([TestDemoTableViewCell class]) bundle:nil] forCellReuseIdentifier:commentID];
    
    //让系统自动计算Cell中用autoLayout约束的控件的高度。
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    // 设置为一个接近“平均”行高的值
    self.tableView.estimatedRowHeight = 44;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestDemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:commentID ];
    
//    [cell setClickBlock:^(NSInteger selectRow) {
//        if (indexPath.row == selectRow) {
//             __weak typeof(self) weakSelf = self;
//            __weak typeof(TestDemoTableViewCell *) = weakSelf;
//            [self addView:weakSelf];
//        }
//    }];
   
    return cell;
}

- (void)addView:(TestDemoTableViewCell *)cell
{
//    ++self.flage;
//    
//    cell.bottomConstraint.constant = self.flage *(kMargain + kHeight) + kMargain;
//    
//    UIImageView *imageView = [[UIImageView alloc] init];
//    [imageView setImage:[UIImage imageNamed:@"send"]];
//    [cell.bgView addSubview:imageView];
//    
//    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(cell.addButton.mas_bottom).with.offset(self.flage *(kMargain + kHeight) + kMargain);
//        make.left.equalTo(cell.bgView.mas_left).with.offset(kMargain);
//        make.right.equalTo(cell.bgView.mas_right).with.offset(-kMargain);
//        make.height.mas_equalTo(kHeight);
//    }];
}






//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
////    // 取出user模型
////    UserModel *user = self.datas[indexPath.row];
////    
////    // 返回这个模型对应的cell高度
////    return user.cellHeight;
//}

- (IBAction)sure:(id)sender {
    
    NSString *text = self.addressTextField.text;
  
    UILabel * label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor greenColor];
    label.numberOfLines = 0;
    [self.addView addSubview:label];
    label.text = text;
    [label sizeToFit];
    label.height = 25;
}

@end
