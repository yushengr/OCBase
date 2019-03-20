//
//  QYBaseViewModel.h
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <coobjc.h>
#import <OCThirdParty/UIScrollView+QYMJRefresh.h>

@protocol QYBaseViewModelDelegate <NSObject>

@optional
- (void)headerState:(BOOL)state;
- (void)footerState:(RefreshFooterState)state;
- (void)updateItems;
- (void)loadingState:(BOOL)isLoading;

@end

@interface QYBaseViewModel : NSObject

@property (nonatomic, weak) id<QYBaseViewModelDelegate> baseDelegate;
@property(nonatomic, assign) BOOL isLoading;

/// 刷新界面
- (void)reloadData;
/// 检测头部刷新状态
- (void)checkHeader;
/// 检测尾部刷新状态
- (void)checkFooter;

/// 开启头部刷新
- (void)beginHeaderRefresh;
/// 开启尾部刷新
- (void)beginFooterRefresh;

@end
