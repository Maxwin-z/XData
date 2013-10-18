//
//  XBaseData.h
//  newsmth
//
//  Created by Maxwin on 13-6-9.
//  Copyright (c) 2013年 nju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XBaseData : NSObject

+ (XBaseData *)dataWithJSON:(id)json;
+ (XBaseData *)dataWithJSON:(id)json type:(NSString *)className;

- (id)initWithJSON:(id)json;
- (void)decode:(id)json;
- (id)encode;
@end
