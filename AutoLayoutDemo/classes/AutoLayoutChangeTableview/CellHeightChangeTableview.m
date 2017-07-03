//
//  AutoLayoutChangeTableView.m
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//



#import "CellHeightChangeTableview.h"
#import <MJExtension.h>
#import "UserModel.h"
#import "CustomCmtCell.h"
@interface CellHeightChangeTableview ()
@property (nonatomic, strong)NSArray *datas;

@end

@implementation CellHeightChangeTableview

static NSString * const commentID = @"commentID";

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
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"user" ofType:@"plist"];
    NSDictionary *datas = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"===:%@",datas[@"list"]);
    self.datas = [UserModel mj_objectArrayWithKeyValuesArray:datas[@"list"]];
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomCmtCell class]) bundle:nil] forCellReuseIdentifier:commentID];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCmtCell *cell = [tableView dequeueReusableCellWithIdentifier:commentID ];
    cell.usrs = self.datas[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 取出user模型
    UserModel *user = self.datas[indexPath.row];
    
    // 返回这个模型对应的cell高度
    return user.cellHeight;
}

@end
