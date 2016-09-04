//
//  Calculator.h
//  ChainCalculator
//
//  Created by 梁兴胜 on 16/9/4.
//  Copyright © 2016年 Loyt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Calculator;
typedef Calculator* (^test)(CGFloat);
@interface Calculator : NSObject
@property (nonatomic, assign) CGFloat result;
@property (nonatomic, copy) Calculator* (^add)(CGFloat);
@property (nonatomic, copy) Calculator* (^minus)(CGFloat);
@property (nonatomic, copy) Calculator* (^multiply)(CGFloat num);
@property (nonatomic, copy) Calculator* (^divide)(CGFloat num);

-(Calculator*)with;
@end
