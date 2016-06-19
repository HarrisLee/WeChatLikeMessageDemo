//
//  EIMImageMessageNodeView.m
//  EIMKitDemo
//
//  Created by everettjf on 16/6/19.
//  Copyright © 2016年 everettjf. All rights reserved.
//

#import "EIMImageMessageNodeView.h"

@implementation EIMImageMessageNodeView

+ (BOOL)canCreateMessageNodeViewInstanceWithMessageWrap:(EIMMessageWrap *)msg{
    if(msg.image) return YES;
    return NO;
}

- (instancetype)initWithMessageWrap:(EIMMessageWrap *)msg{
    self = [super init];
    if(self){
        
    }
    return self;
}


@end
