//
//  Header.h
//  ZYSGoodsDetailServiceProtocol
//
//  Created by 张永顺 on 2018/1/29.
//  Copyright © 2018年 ideal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ZYSGoodsDetailServiceProtocol <NSObject>

@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end

