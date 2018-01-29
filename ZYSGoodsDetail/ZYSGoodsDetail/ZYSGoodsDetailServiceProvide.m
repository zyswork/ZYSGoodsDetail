//
//  ZYSGoodsDetailServiceProvide.m
//  ZYSGoodsDetail
//
//  Created by 张永顺 on 2018/1/29.
//  Copyright © 2018年 ideal. All rights reserved.
//

#import "ZYSGoodsDetailServiceProvide.h"
#import <ZYSGoodsDetailServiceProtocol/ZYSGoodsDetailServiceProtocol.h>
#import <ZYSProtocolManager/ZYSProtocolManager.h>

#import "ZYSGoodsDetailViewController.h"

@interface ZYSGoodsDetailServiceProvide()<ZYSGoodsDetailServiceProtocol>

@end

@implementation ZYSGoodsDetailServiceProvide

+ (void)load
{
    [ZYSProtocolManager registServiceProvide:[[self alloc]init] forProtocol:@protocol(ZYSGoodsDetailServiceProtocol)];
    
}
- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName{
    
    ZYSGoodsDetailViewController * goodsDetailVC = [[ZYSGoodsDetailViewController alloc]initWithGoodsID:goodsId goodsName:goodsName];
    
    
    return goodsDetailVC;
}
@end
