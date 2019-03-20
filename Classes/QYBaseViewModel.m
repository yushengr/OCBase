//
//  QYBaseViewModel.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYBaseViewModel.h"

@implementation QYBaseViewModel

- (void)setIsLoading:(BOOL)isLoading {
    _isLoading = isLoading;
    if ([_baseDelegate respondsToSelector:@selector(loadingState:)]) {
        [_baseDelegate loadingState:_isLoading];
    }
}

- (void)reloadData {
    if ([_baseDelegate respondsToSelector:@selector(updateItems)]) {
        [_baseDelegate updateItems];
    }
}

- (void)checkHeader {
    if ([_baseDelegate respondsToSelector:@selector(headerState:)]) {
        [_baseDelegate headerState:false];
    }
}

- (void)checkFooter {
    if ([_baseDelegate respondsToSelector:@selector(footerState:)]) {
        [_baseDelegate footerState:RefreshFooterStateIdle];
    }
}

- (void)beginHeaderRefresh {

}

- (void)beginFooterRefresh {
    
}

- (void)dealloc {
    NSLog(@"%@: Dealloc", NSStringFromClass([self class]));
}

@end
