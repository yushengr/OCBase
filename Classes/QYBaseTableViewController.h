//
//  QYBaseTableViewController.h
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIScrollView+QYMJRefresh.h>
#import <QYRefreshHeader.h>
#import <QYRefreshFooter.h>

#import "QYBaseViewController.h"
#import "QYBaseTableView.h"

#import "QYBaseViewModel.h"

@interface QYBaseTableViewController : QYBaseViewController<QYBaseViewModelDelegate>

@property(nonatomic, strong) QYBaseTableView *tableView;

- (void)beginHeaderRefresh;

@end
