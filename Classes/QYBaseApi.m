//
//  QYBaseApi.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYBaseApi.h"
#import <YTKNetworkAgent.h>

@implementation QYBaseApi

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setContentType];
    }
    return self;
}

- (void)setContentType {

    YTKNetworkAgent *agent = [YTKNetworkAgent sharedAgent];
    NSSet *acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/plain", @"text/html", @"text/css", nil];
    NSString *keypath = @"jsonResponseSerializer.acceptableContentTypes";
    @try {
        [agent setValue:acceptableContentTypes forKeyPath:keypath];
    } @catch (NSException *exception) {

    } @finally {

    }
}

@end
