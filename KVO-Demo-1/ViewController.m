//
//  ViewController.m
//  KVO-Demo-1
//
//  Created by wqj on 2018/4/4.
//  Copyright © 2018年 wqj. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property(nonatomic,strong) Person *person;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _person = [Person new];
    _person.pet = [Pet new];
    
    [_person addObserver:self forKeyPath:@"pet" options:NSKeyValueObservingOptionNew context:nil];
    
    
    
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"keypatch -- %@",_person.pet.name);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    static int num;
    _person.pet.name = [NSString stringWithFormat:@"野狗%d",num++ ];
    
    
}

@end
