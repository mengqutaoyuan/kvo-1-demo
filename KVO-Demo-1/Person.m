//
//  Person.m
//  KVO-Demo-1
//
//  Created by wqj on 2018/4/4.
//  Copyright © 2018年 wqj. All rights reserved.
//

#import "Person.h"

@implementation Person

+(NSSet<NSString *> *)keyPathsForValuesAffectingValueForKey:(NSString *)key{
    
    NSSet * keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
    if ([key isEqualToString:@"pet"]) {
        keyPaths = [keyPaths setByAddingObjectsFromArray:@[@"_pet.name",@"_pet.age",@"_pet.weight"]];
    }
    
    return keyPaths;
    
}

@end
