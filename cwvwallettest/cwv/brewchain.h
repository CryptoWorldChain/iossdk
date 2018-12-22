//
//  brewchain.h
//  OpenSSL-for-iOS
//
//  Created by brew on 2018/12/21.
//  Copyright © 2018 Immobilienscout24. All rights reserved.
//
#pragma once
#import <Foundation/Foundation.h>
#pragma pack(1)


typedef struct KeyPairs{
    char  hexPrikey[65];
    char  hexPubkey[129];
    char  hexAddress[41];
    char  hexBcuid[129];
}KeyPair;

@interface KeyPairHelper : NSObject
//获取私钥
+ (NSString*)hexPrikey:(KeyPair)kp;
//获取公钥
+ (NSString*)hexPubkey:(KeyPair)kp;
//获取地址
+ (NSString*)hexAddress:(KeyPair)kp;
@end
@interface BrewChainUtils : NSObject
//根据私钥生成私钥对
+ (KeyPair)genFromPrikey:(NSString *)hexPrikey;
//生成随机密钥对
+ (KeyPair)genRandomKey;
//数据签名
+ (NSString*)ecSign:(KeyPair)kp content:(NSString*)msg;
@end
