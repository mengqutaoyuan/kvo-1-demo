//
//  Person.h
//  KVO-Demo-1
//
//  Created by wqj on 2018/4/4.
//  Copyright © 2018年 wqj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pet.h"

@interface Person : NSObject
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) Pet *pet;

@end
