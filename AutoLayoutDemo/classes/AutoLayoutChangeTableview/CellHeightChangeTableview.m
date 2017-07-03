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
    
    NSDictionary *data1 = @{@"icon": @"myIcon",
                            @"name": @"GJBlog",
                            @"content": @"今天天气真好啊"};
    
    NSDictionary *data2 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊"};
    
    NSDictionary *data3 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊",
                            @"comment": @"hello world,今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊，国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪国土资源部最新消息，受连续强降雨影响，湖南7月"};
    
    NSDictionary *data4 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊，国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪"};
    
    NSDictionary *data5 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊，国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪针对湖南严峻的防灾形势，国土资源部目前已启动地质灾害三级应急响应，专家组已赴现场指导湖南做好当前强降雨期间地质灾害防范工作."};
    
    NSArray *datas = @[data1, data2, data3,data4,data5];
    
    self.datas = [UserModel mj_objectArrayWithKeyValuesArray:datas];
    
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
    // 取出帖子模型
    UserModel *user = self.datas[indexPath.row];
    
    // 返回这个模型对应的cell高度
    return user.cellHeight;
}



@end
