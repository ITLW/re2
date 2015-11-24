//
//  ViewController.m
//  GItDemo
//
//  Created by 李伟 on 15/11/24.
//  Copyright (c) 2015年 a. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"
@interface ViewController ()
@property(nonatomic,strong)NSString *git;

@property(nonatomic,strong)TestClass *textClass;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"init");
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
