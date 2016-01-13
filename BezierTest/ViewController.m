//
//  ViewController.m
//  Test
//
//  Created by yi on 16/1/9.
//  Copyright © 2016年 yi. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
#import "BezierView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestView *testV = [[TestView alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
    [self.view addSubview:testV];
    
    
    BezierView *baseV = [[BezierView alloc] initWithFrame:CGRectMake(10, 300, 200, 200)];
    [self.view addSubview:baseV];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
