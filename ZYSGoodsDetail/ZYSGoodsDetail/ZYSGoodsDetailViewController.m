//
//  ZYSGoodsDetailViewController.m
//  ZYSGoodsDetail
//
//  Created by 张永顺 on 2018/1/29.
//  Copyright © 2018年 ideal. All rights reserved.
//

#import "ZYSGoodsDetailViewController.h"

@interface ZYSGoodsDetailViewController ()

@property (nonatomic, copy) NSString * goodsID;

@property (nonatomic, copy) NSString * goodsName;

@property (nonatomic, strong) UILabel * statusLabel;

@property (nonatomic, strong) UIButton * buyButton;

@end

@implementation ZYSGoodsDetailViewController

- (instancetype)initWithGoodsID:(NSString *)goodsID goodsName:(NSString *)goodsName
{
    self = [super init];
    if (self) {
        _goodsID = goodsID;
        _goodsName = goodsName;
    }
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.title;
    [self.view addSubview:self.statusLabel];
    [self.view addSubview:self.buyButton];
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.statusLabel.frame = CGRectMake(0, 0, 100, 20);
    self.statusLabel.center = self.view.center;
    self.buyButton.frame = CGRectMake(0, self.view.frame.size.height-45, self.view.frame.size.width, 45);
}

#pragma mark - event
- (void)didClickBuybutton:(UIButton *)button
{
    
}
#pragma mark - getters
- (UILabel *)statusLabel
{
    if (_statusLabel == nil) {
        _statusLabel = [[UILabel alloc]init];
        _statusLabel.textColor = UIColor.redColor;
        _statusLabel.font = [UIFont systemFontOfSize:15.f];
        _statusLabel.textAlignment = NSTextAlignmentCenter;
        _statusLabel.text = @"暂未购买";
    }
    return  _statusLabel;
}
-(UIButton *)buyButton{
    if (_buyButton == nil) {
        _buyButton =  [UIButton buttonWithType:UIButtonTypeCustom];
        [_buyButton setTitle:@"立即购买" forState:UIControlStateNormal];
        [_buyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_buyButton setBackgroundColor:[UIColor redColor]];
        [_buyButton addTarget:self action:@selector(didClickBuybutton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _buyButton;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
