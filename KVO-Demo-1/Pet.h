//
//  Pet.h
//  KVO-Demo-1
//
//  Created by wqj on 2018/4/4.
//  Copyright © 2018年 wqj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pet : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign) int age;
@property(nonatomic, assign) int *weight;



@end
