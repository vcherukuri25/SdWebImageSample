//
//  ViewController.m
//  Sample ImageTableView
//
//  Created by Vivekananda Cherukuri on 22/05/20.
//  Copyright © 2020 APXOR. All rights reserved.
//

#import "ViewController.h"
#import "SampeTableViewCell.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonnull, strong) UITableView *sampleTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _sampleTableView = [[UITableView alloc]init];
    _sampleTableView.translatesAutoresizingMaskIntoConstraints = false;
    _sampleTableView.delegate = self;
    _sampleTableView.dataSource = self;
    [_sampleTableView registerClass:[SampeTableViewCell class] forCellReuseIdentifier:@"SampleCell"];
    
    [self.view addSubview:_sampleTableView];
    
    [_sampleTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = true;
    [_sampleTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = true;
    [_sampleTableView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = true;
    [_sampleTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = true;
    
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
   
    SampeTableViewCell *sampleCell = [_sampleTableView dequeueReusableCellWithIdentifier:@"SampleCell" forIndexPath:indexPath];
   
    [sampleCell.sampleImageView sd_setImageWithURL:[NSURL URLWithString:@"https://wish-wishfie.s3-ap-northeast-1.amazonaws.com/000GV6MT9Dpragnyapatel1533914178375_thumbnail"]];
    
    // [sampleCell.sampleImageView sd_setImageWithURL:[NSURL URLWithString:@"https://d1i3m4mqslt45y.cloudfront.net/R5BDO7ZDC4dianapenty1590088672415_thumbnail"]];
    return sampleCell;

}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
