//
//  ViewController.m
//  UILabel-objc
//
//  Created by 向尉 on 2018/12/8.
//  Copyright © 2018 SwordAndTea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 150, 100)];
    //label.frame = CGRectMake(0, 0, 150, 100);
    label.center = self.view.center;
    label.text = @"hello world";
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:20];
    label.textAlignment = NSTextAlignmentCenter;
    label.shadowColor = [UIColor lightGrayColor];
    label.shadowOffset = CGSizeMake(10, 10);
    
    /*To test line change, uncomment those code*/
    //label.text = @"much much much much text";
    //label.numberOfLines = 0;
    [self.view addSubview: label];
}


@end
