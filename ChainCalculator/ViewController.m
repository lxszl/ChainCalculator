//
//  ViewController.m
//  ChainCalculator
//
//  Created by 梁兴胜 on 16/9/4.
//  Copyright © 2016年 Loyt. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calculator *cal = [[Calculator alloc]init];
    cal.add(5).minus(1).multiply(2).divide(1);
    
    NSLog(@"result = %.2f",cal.result);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
