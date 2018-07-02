//
//  ViewController.m
//  podTest
//
//  Created by Mac  on 27/6/18.
//  Copyright © 2018年 Mac . All rights reserved.
//

#import "ViewController.h"



@interface ViewController () <UIGestureRecognizerDelegate>
@property (nonatomic, strong) UIView *v1;
@property (nonatomic, strong) UIView *v2;
@property (nonatomic, strong) UIView *v3;
@property (nonatomic, strong) UIView *v4;
@property (nonatomic, strong) UIView *v5;
@property (nonatomic, assign) BOOL changeC;
@property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.changeC = YES;
    self.tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapaa)];
//    self.tap.delegate = self;
    [self.view addGestureRecognizer:self.tap];
    
    
    self.tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapaa2)];
//     self.tap2.delegate = self;
    [self.view addGestureRecognizer:self.tap2];
    
    
    [self.tap2 requireGestureRecognizerToFail:self.tap];
    
    
    self.v1 = [[UIView alloc] init];
    self.v1.backgroundColor = [UIColor redColor];
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapaa1)];
    
    [self.v1 addGestureRecognizer:tap1];
    [self.view addSubview:self.v1];
    
    self.v2 = [[UIView alloc] init];
    self.v2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.v2];
    
    
    self.v3 = [[UIView alloc] init];
    self.v3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.v3];
    
    

    
    [self.v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    
    

    
    [self.v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.v1);
        make.width.mas_equalTo(80);
        make.left.equalTo(self.v1.mas_right).mas_offset(30);
        make.height.mas_equalTo(80);
    }];
    
    
    
    
    [self.v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.v1.mas_bottom).mas_offset(50);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);
    }];

    
    
    
    
}

- (void)tapaa2
{
    
    if (YES == self.changeC) {
        
           self.view.backgroundColor = [UIColor blackColor];
        self.changeC = NO;
        
    }else {
        
           self.view.backgroundColor = [UIColor whiteColor];
        self.changeC = YES;
        
    }
 
    
    
}

- (void)tapaa
{
    
    [self.v4 removeFromSuperview];
//    [self.tap requireGestureRecognizerToFail:self.tap2];
    
    
}

- (void)tapaa1
{
    
    [self initUI];
    
}


- (void)initUI
{
    
//     [self.tap2 requireGestureRecognizerToFail:self.tap];
    
    self.v4 = [[UIView alloc] init];
    self.v4.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.v4];
    
    [self.v4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(400);
        make.height.mas_equalTo(400);
    }];
    
    
}


//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//
//{
//
//    return YES;
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
