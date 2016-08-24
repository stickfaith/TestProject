//
//  ViewController.m
//  PreciseTimer
//
//  Created by zp on 16/3/30.
//  Copyright © 2016年 elex. All rights reserved.
//

#include <mach/mach.h>
#include <mach/mach_time.h>


#import "ViewController.h"


static const uint64_t NANOS_PER_USEC = 1000ULL;
static const uint64_t NANOS_PER_MILLISEC = 1000ULL * NANOS_PER_USEC;
static const uint64_t NANOS_PER_SEC = 1000ULL * NANOS_PER_MILLISEC;

static mach_timebase_info_data_t timebase_info;

static uint64_t nanos_to_abs(uint64_t nanos) {
    return nanos * timebase_info.denom / timebase_info.numer;
}

void example_mach_wait_until(int seconds)
{
    mach_timebase_info(&timebase_info);
    uint64_t time_to_wait = nanos_to_abs(seconds * NANOS_PER_SEC);
    uint64_t now = mach_absolute_time();
    mach_wait_until(now + time_to_wait);
    uint64_t future = mach_absolute_time();
    NSLog(@"zp 111 :%lld", future-now);
}


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    example_mach_wait_until(5);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
