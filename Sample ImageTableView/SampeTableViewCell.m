//
//  SampeTableViewCell.m
//  Sample ImageTableView
//
//  Created by Vivekananda Cherukuri on 22/05/20.
//  Copyright © 2020 APXOR. All rights reserved.
//

#import "SampeTableViewCell.h"

@implementation SampeTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self != nil) {
      
        self.backgroundColor = [UIColor blueColor];

        _sampleImageView = [[UIImageView alloc]init];
        _sampleImageView.backgroundColor = [UIColor redColor];
        _sampleImageView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_sampleImageView];
        
        [_sampleImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:10].active = true;
        [_sampleImageView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor].active = true;
        [_sampleImageView.widthAnchor constraintEqualToConstant:30].active = true;
        [_sampleImageView.heightAnchor constraintEqualToConstant:30].active = true;
        
        
    }
    return self;
}

@end
