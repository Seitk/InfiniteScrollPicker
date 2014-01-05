//
//  ViewController.m
//  InfiniteScrollPickerExample
//
//  Created by Philip Yu on 6/6/13.
//  Copyright (c) 2013 Philip Yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    InfiniteScrollPicker *isp;
    InfiniteScrollPicker *isp2;
    InfiniteScrollPicker *isp3;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *set1 = [[NSMutableArray alloc] init];
    for (int i = 0; i < 6; i++) {
        [set1 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"s1_%d.png", i]]];
    }
    
    NSMutableArray *set2 = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 10; i++) {
        [set2 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"s2_%d.png", i]]];
    }
    
    NSMutableArray *set3 = [[NSMutableArray alloc] init];
    for (int i = 0; i < 20; i++) {
        [set3 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"s3_%d.jpeg", i]]];
    }
    
    isp = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    [isp setItemSize:CGSizeMake(50, 50)];
    [isp setImageAry:set1];
    [isp setSelectedItem:5];
    [self.view addSubview:isp];
    
    isp2 = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 110, 320, 120)];
    [isp2 setImageAry:set2];
    [isp2 setHeightOffset:30.0];
    [isp2 setPositionRatio:2.0];
    [isp2 setAlphaOfobjs:0.3];
    [isp2 setSelectedItem:0];
    [self.view addSubview:isp2];

    isp3 = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 240, 320, 210)];
    [isp3 setImageAry:set3];
    [isp3 setHeightOffset:20];
    [isp3 setPositionRatio:2];
    [isp3 setAlphaOfobjs:0.8];
    [self.view addSubview:isp3];
}

- (void)infiniteScrollPicker:(InfiniteScrollPicker *)infiniteScrollPicker didSelectAtImage:(UIImage *)image
{
    NSLog(@"selected");
}

@end
