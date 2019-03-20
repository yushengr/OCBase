//
//  QYBaseTableViewController.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYBaseTableViewController.h"

#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>

@interface QYBaseTableViewController()

@property(nonatomic, assign) UITableViewStyle style;

@end

@implementation QYBaseTableViewController

#pragma mark - Setter Method
- (void)setIsLoading:(BOOL)isLoading {
    super.isLoading = isLoading;
    [self.tableView reloadEmptyDataSet];
}

#pragma mark - Lazyload
- (UITableViewStyle)style {
    if (!_style) {
        _style = UITableViewStylePlain;
    }
    return _style;
}

- (QYBaseTableView *)tableView {
    if (!_tableView) {
        _tableView = [[QYBaseTableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:_style];
    }
    return _tableView;
}

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super init];
    if (self) {
        self.style = style;
    }
    return self;
}

- (void)makeUI {
    [super makeUI];
    
    [self.view addSubview:self.tableView];
}

- (void)beginHeaderRefresh {

    __weak __typeof(self)weakSelf = self;
    [self.tableView.mj_header beginRefreshingWithCompletionBlock:^{

        __strong __typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.tableView.emptyDataSetSource = strongSelf;
        strongSelf.tableView.emptyDataSetDelegate = strongSelf;
    }];
}

#pragma mark - QYBaseViewModelDelegate
- (void)headerState:(BOOL)state {
    self.tableView.headerState = state;
}

- (void)footerState:(RefreshFooterState)state {
    self.tableView.footerState = state;
}

- (void)updateItems {
    [self.tableView reloadData];
}

- (void)loadingState:(BOOL)isLoading {
    self.isLoading = isLoading;
}

@end
