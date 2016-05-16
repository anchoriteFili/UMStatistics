//
//  BaseClickAttribute.m
//  ShouKeBao
//
//  Created by 冯坤 on 15/7/1.
//  Copyright (c) 2015年 shouKeBao. All rights reserved.
//

#import "BaseClickAttribute.h"

@implementation BaseClickAttribute


/**
 AppUserID = 5e340a00cc0448f287feff836798d814;
 BusinessID = 0b4cb8834c3d43dea36b5fd955f19c17;
 DeviceID = "2B960BAB-7FCC-4858-9D51-20C7FA398E4C";
 DistributionID = ded10473efb748059acf2adf1dc71718;
 SubstationName = "\U4e0a\U6d77";
 */
- (instancetype)init
{
    self = [super init];
    if (self) {
        self = (BaseClickAttribute *)[NSMutableDictionary dictionaryWithCapacity:1];
     NSDictionary * dic = @{@"SubstationName" : @"上海",
                            @"DistributionID" : @"ded10473efb748059acf2adf1dc71718",
                                @"BusinessID" : @"0b4cb8834c3d43dea36b5fd955f19c17",
                                  @"DeviceID" : @"2B960BAB-7FCC-4858-9D51-20C7FA398E4C",
                                 @"AppUserID" : @"5e340a00cc0448f287feff836798d814"};
    [self addEntriesFromDictionary:dic];
    }

    return self;
}

+ (BaseClickAttribute *)attributeWithDic:(NSDictionary *)dic{
    BaseClickAttribute * diccc = [[BaseClickAttribute alloc]init];
    if (dic) {
        [diccc addEntriesFromDictionary:dic];
    }
    return diccc;
}




@end
