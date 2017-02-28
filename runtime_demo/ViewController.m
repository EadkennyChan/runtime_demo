//
//  ViewController.m
//  runtime_demo
//
//  Created by EadkennyChan on 17/2/27.
//  Copyright © 2017年 ZX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *m_arrayTitle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tbv = [[UITableView alloc] initWithFrame:self.view.bounds];
    tbv.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [tbv registerClass:[UITableViewCell class] forCellReuseIdentifier:@"VCCellID"];
    tbv.delegate = self;
    tbv.dataSource = self;
    [self.view addSubview:tbv];
    m_arrayTitle = @[@"添加成员变量", @"添加方法", @"交换两个方法", @"分类添加属性", @"NSCoding自动归档解档", @"字典自动转模型"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return m_arrayTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VCCellID"];
    cell.textLabel.text = m_arrayTitle[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
