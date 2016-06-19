//
//  EIMTextMessageNodeView.m
//  EIMKitDemo
//
//  Created by everettjf on 16/6/19.
//  Copyright © 2016年 everettjf. All rights reserved.
//

#import "EIMTextMessageNodeView.h"
#import "EIMUtility.h"

@implementation EIMTextMessageNodeView{
    UIImageView *_headView;
    UILabel *_textView;
}

+ (BOOL)canCreateMessageNodeViewInstanceWithMessageWrap:(EIMMessageWrap *)msg{
    if(msg.text) return YES;
    return NO;
}

- (instancetype)initWithMessageWrap:(EIMMessageWrap *)msg{
    self = [super init];
    if(self){
        _headView = [UIImageView new];
        _headView.backgroundColor = [UIColor blueColor];
        [self addSubview:_headView];
        
        _textView = [UILabel new];
        _textView.backgroundColor = [UIColor grayColor];
        [self addSubview:_textView];
        
        _textView.text = msg.text;
        
        if(msg.mine){
            _headView.center = CGPointMake(SCREEN_WIDTH - (15 + 10), 15 + 10);
            _headView.bounds = CGRectMake(0, 0, 30, 30);
            
            CGSize textSize = [_textView sizeThatFits:CGSizeMake(200, FLT_MAX)];
            _textView.bounds = CGRectMake(0, 0, textSize.width, textSize.height);
            _textView.center = CGPointMake(SCREEN_WIDTH - (30 + 10) -10- textSize.width/2, textSize.height/2+ 10);
        }else{
            _headView.center = CGPointMake(15 + 10, 15 + 10);
            _headView.bounds = CGRectMake(0, 0, 30, 30);
            
            CGSize textSize = [_textView sizeThatFits:CGSizeMake(200, FLT_MAX)];
            _textView.bounds = CGRectMake(0, 0, textSize.width, textSize.height);
            _textView.center = CGPointMake(10+30+10+textSize.width/2, textSize.height/2+ 10);
        }
        
    }
    return self;
}

@end
