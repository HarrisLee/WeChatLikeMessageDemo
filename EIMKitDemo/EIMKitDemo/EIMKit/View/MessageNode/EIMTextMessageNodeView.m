//
//  EIMTextMessageNodeView.m
//  EIMKitDemo
//
//  Created by everettjf on 16/6/19.
//  Copyright © 2016年 everettjf. All rights reserved.
//

#import "EIMTextMessageNodeView.h"

@implementation EIMTextMessageNodeView

+ (BOOL)canCreateMessageNodeViewInstanceWithMessageWrap:(EIMMessageWrap *)msg{
    if(msg.text) return YES;
    return NO;
}

- (instancetype)initWithMessageWrap:(EIMMessageWrap *)msg{
    self = [super init];
    if(self){
        
    }
    return self;
}

@end
