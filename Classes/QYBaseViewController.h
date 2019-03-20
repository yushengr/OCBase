//
//  QYBaseViewController.h
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIScrollView+EmptyDataSet.h>
#import <JXCategoryView.h>

@interface QYBaseViewController : UIViewController<DZNEmptyDataSetSource, DZNEmptyDataSetDelegate, JXCategoryListContentViewDelegate>

/** 是否正在加载 */
@property(nonatomic, assign) BOOL isLoading;
/** 数据源 nil 时显示的标题 */
@property(nonatomic, strong) NSString *emptyDataSetTitle;
/** 数据源 nil 时显示的描述 */
@property(nonatomic, strong) NSString *emptyDataSetDescription;
/** 数据源 nil 时显示的图片 */
@property(nonatomic, strong) UIImage *emptyDataSetImage;
/** 数据源 nil 时是否可用滚动 */
@property(nonatomic, assign) BOOL isEmptyDataSetShouldAllowScroll;

- (void)makeUI;

@end
