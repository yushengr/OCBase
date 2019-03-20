//
//  QYBaseViewController.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYBaseViewController.h"

@interface QYBaseViewController ()

@end

@implementation QYBaseViewController

#pragma mark - Lazyload
- (BOOL)isEmptyDataSetShouldAllowScroll {
    if (!_isEmptyDataSetShouldAllowScroll) {
        _isEmptyDataSetShouldAllowScroll = YES;
    }
    return _isEmptyDataSetShouldAllowScroll;
}

- (NSString *)emptyDataSetTitle {
    if (!_emptyDataSetTitle) {
        _emptyDataSetTitle = @"";
    }
    return _emptyDataSetTitle;
}

- (NSString *)emptyDataSetDescription {
    if (!_emptyDataSetDescription) {
        _emptyDataSetDescription = @"没有获取到数据~";
    }
    return _emptyDataSetDescription;
}

- (UIImage *)emptyDataSetImage {
    if (!_emptyDataSetImage) {
        _emptyDataSetImage = [UIImage imageNamed:@"hg_default-error"];
    }
    return _emptyDataSetImage;
}

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];

    [self makeUI];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
}

- (void)makeUI {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)dealloc {
    NSLog(@"%@: Dealloc", NSStringFromClass([self class]));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%@: Received Memory Warning", NSStringFromClass([self class]));
}

#pragma mark - DZNEmptyDataSetSource
- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    return [[NSAttributedString alloc]initWithString:self.emptyDataSetTitle];
}

- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    return [[NSAttributedString alloc]initWithString:self.emptyDataSetDescription];
}

- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    return self.emptyDataSetImage;
}

- (UIColor *)backgroundColorForEmptyDataSet:(UIScrollView *)scrollView {
    return [UIColor clearColor];
}

#pragma mark - DZNEmptyDataSetDelegate
- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return !self.isLoading;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return self.isEmptyDataSetShouldAllowScroll;
}

#pragma mark - JXCategoryListContentViewDelegate
- (UIView *)listView {
    return self.view;
}

@end
