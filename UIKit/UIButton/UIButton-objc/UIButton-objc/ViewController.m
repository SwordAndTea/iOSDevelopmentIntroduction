//
//  ViewController.m
//  UIButton-objc
//
//  Created by 向尉 on 2018/12/9.
//  Copyright © 2018 SwordAndTea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 40);
    button.center = self.view.center;//set the button's position to the view's center
    [button setTitle:@"click" forState: UIControlStateNormal];//set text while UIButton is not under clicking
    [button setTitle:@"selected" forState: UIControlStateHighlighted];//set text while UIButton is under clicking
    [button setImage: [UIImage imageNamed:@"user.png"]  forState: UIControlStateNormal];//the image is in Assets.xcassets
    
    [button addTarget:self action:@selector(clickButtonTouchUpInside:) forControlEvents: UIControlEventTouchUpInside];
    //Uncomment the code below to test add same target twice, how many times will log in the console
    //[button addTarget:self action:@selector(clickButtonTouchUpInside:) forControlEvents: UIControlEventTouchUpInside];
    
    [button addTarget:self action:@selector(clickButtonTouchUpOutside:) forControlEvents: UIControlEventTouchUpOutside];
    [self.view addSubview: button];
}

-(void)clickButtonTouchUpInside: (UIButton *) sender {
    NSLog(@"clicked touch up inside");
}

-(void)clickButtonTouchUpOutside: (UIButton *) sender {
    NSLog(@"clicked touch up outside");
}
     
@end
