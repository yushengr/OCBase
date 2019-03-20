//
//  QYBaseTableView.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYBaseTableView.h"

@implementation QYBaseTableView

- (instancetype)init {

    self = [super init];
    if (self) {
        [self makeUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        [self makeUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {

    self = [super initWithFrame:frame style:style];
    if (self) {
        [self makeUI];
    }
    return self;
}

- (void)makeUI {

    self.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.rowHeight = UITableViewAutomaticDimension;
    self.estimatedRowHeight = 50;
    self.backgroundColor = [UIColor clearColor];
}

@end
