//
//  Calculator.m
//  ChainCalculator
//
//  Created by 梁兴胜 on 16/9/4.
//  Copyright © 2016年 Loyt. All rights reserved.
//

#import "Calculator.h"

@interface Calculator ()
@end
@implementation Calculator

-(instancetype)init{
    
    if (self = [super init]) {
        
        _result = 0;
    }
    return self;
}

-(Calculator *(^)(CGFloat))add{
    
    return ^(CGFloat num){
        
        _result += num;
        return self;
    };
}

-(Calculator* (^)(CGFloat num))minus{
    
    return ^(CGFloat num){
      
        _result -= num;
        return self;
    };
}

-(Calculator *(^)(CGFloat))multiply{
    
    return ^(CGFloat num){
        
        _result *= num;
        return self;
    };
}

-(Calculator *(^)(CGFloat))divide{
    
    return ^(CGFloat num){
        
        NSAssert(num != 0, @"除数不能为0");
        _result /= num;
        return self;
    };
}

-(Calculator *)with{
    
    return self;
}
@end
