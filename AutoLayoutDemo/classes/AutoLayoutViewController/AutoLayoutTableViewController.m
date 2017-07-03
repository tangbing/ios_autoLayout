
//
//  AutoLayoutTableViewController.m
//  AutoLayoutDemo
//
//  Created by mac on 2017/6/30.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import "AutoLayoutTableViewController.h"
#import "AutoLayoutView.h"
#import "AutoLayoutChangeViewController.h"
#import "AutoLayoutTableView.h"
#import "CellHeightChangeTableview.h"
@interface AutoLayoutTableViewController ()

@property (nonatomic, strong)NSArray *arrays;
@end

@implementation AutoLayoutTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrays = @[@"自适应view",@"动态改变view",@"AutoLayout计算tableview的Cell的高度",@"计算文字高度自适应tableview的Cell的高度"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrays.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * ID = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = self.arrays[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        AutoLayoutView *autoLayout = [[AutoLayoutView alloc] initWithTitle:self.arrays[indexPath.row]];
        [self.navigationController pushViewController:autoLayout animated:YES];
    } else if(indexPath.row == 1){
        AutoLayoutChangeViewController * change = [[AutoLayoutChangeViewController alloc] initWithTitle:self.arrays[indexPath.row]];
          [self.navigationController pushViewController:change animated:YES];
    } else if (indexPath.row == 2){
        AutoLayoutTableView * tableview = [[AutoLayoutTableView alloc] initWithTitle:self.arrays[indexPath.row]];
        [self.navigationController pushViewController:tableview animated:YES];
    } else if(indexPath.row == 3) {
        CellHeightChangeTableview * tableview = [[CellHeightChangeTableview alloc] initWithTitle:self.arrays[indexPath.row]];
        [self.navigationController pushViewController:tableview animated:YES];
    } else {
        
    }
}

@end
