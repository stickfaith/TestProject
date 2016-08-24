//
//  ViewController.m
//  ZPWeakReference
//
//  Created by 郑鹏 on 16/2/4.
//  Copyright © 2016年 郑鹏. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+Addition.h"

@interface ViewController () {
    
    NSMutableArray *marrTest;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSNumber *number = [NSNumber numberWithInt:1];
    NSMutableArray *marrOrigin = [NSMutableArray arrayWithObject:number];
    
    marrTest = [NSMutableArray mutableArrayUsingWeakReferences];
    [marrTest addObjectsFromArray:marrOrigin];
    
    NSLog(@"zp test array 111 :%@", marrTest);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    NSLog(@"zp test array 222 :%@", marrTest);
    
}

@end
