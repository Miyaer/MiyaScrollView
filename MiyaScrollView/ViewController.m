//
//  ViewController.m
//  MiyaScrollView
//
//  Created by miya on 16/7/12.
//  Copyright © 2016年 miya. All rights reserved.
//

#import "ViewController.h"
#import "MiyaerScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    MiyaerScrollView * myScroll = [[MiyaerScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    myScroll.placeHolderImageName = @"1.jpg";
    myScroll.needPageControl = YES;
    myScroll.infiniteLoop = YES;
    NSMutableArray * imageArr = [[NSMutableArray alloc]init];
    for (int i=1; i<=5; i++) {
        [imageArr addObject:[NSString stringWithFormat:@"%d.jpg",i]];
    }
    myScroll.imageArray = imageArr;
    [self.view addSubview:myScroll];
}


@end
