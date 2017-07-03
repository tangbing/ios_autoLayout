//
//  AutoLayoutTableView.m
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "AutoLayoutTableView.h"
#import "CustomCell.h"
@interface AutoLayoutTableView ()
@property (nonatomic, strong)NSArray *datas;
@end

@implementation AutoLayoutTableView

static NSString * const CellIdentifier = @"CellIdentifier";
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
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊"};
    
    NSDictionary *data4 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊，国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪"};
    
    NSDictionary *data5 = @{@"icon": @"myIcon",
                            @"name": @"GJBlogGJBlogGJBlogGJBlogGJBlog",
                            @"content": @"今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊今天天气真好啊，国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪国土资源部最新消息，受连续强降雨影响，湖南7月1日发生8起导致人员伤亡的地质灾害，共造成17人死亡失踪。其中，长沙宁乡县发生1起滑坡灾害，造成5人死亡3人失踪针对湖南严峻的防灾形势，国土资源部目前已启动地质灾害三级应急响应，专家组已赴现场指导湖南做好当前强降雨期间地质灾害防范工作."};
    
    self.datas = @[data1, data2, data3,data4,data5];
    
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomCell class]) bundle:nil] forCellReuseIdentifier:CellIdentifier];
    
    //让系统自动计算Cell中用autoLayout约束的控件的高度。
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    // 设置为一个接近“平均”行高的值
    self.tableView.estimatedRowHeight = 44;
}



#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    [cell.iconImage setImage:[UIImage imageNamed:@"test"]];
    cell.nickLabel.text = self.datas[indexPath.row][@"name"];
    cell.contentLabel.text =  self.datas[indexPath.row][@"content"];
    cell.timeLabel.text = @"2017-07-01 15:30";
    return cell;
}


@end
