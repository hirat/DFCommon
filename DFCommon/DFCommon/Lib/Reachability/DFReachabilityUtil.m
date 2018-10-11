//
//  DFReachabilityUtil.m
//  Heacha
//
//  Created by Allen Zhong on 15/2/13.
//  Copyright (c) 2015年 Datafans Inc. All rights reserved.
//

#import "DFReachabilityUtil.h"

@implementation DFReachabilityUtil

+(BOOL) isNetworkAvailable
{
    BOOL isEnable3G = ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] != NotReachable);
    BOOL isEnableWiFi = ([[Reachability reachabilityForLocalWiFi] currentReachabilityStatus] != NotReachable);
    return (isEnable3G || isEnableWiFi);
}
@end
