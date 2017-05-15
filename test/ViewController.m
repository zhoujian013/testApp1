//
//  ViewController.m
//  test
//
//  Created by 周健 on 2017/5/10.
//  Copyright © 2017年 周健. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<ZJTestDelegate>
@property(nonatomic, strong)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //layer比view更加轻量级,在视图不需要与用户交互的时候,可以选择layer
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 100, 100);
    layer.backgroundColor = [UIColor cyanColor].CGColor;
    layer.contents = (id)[UIImage imageNamed:@"shape.jpg"].CGImage;
    layer.cornerRadius = 10;
    layer.masksToBounds = YES;
    layer.borderWidth = 3;
    layer.borderColor = [UIColor brownColor].CGColor;
    [self.view.layer addSublayer:layer];
    
    [self.view addSubview:self.label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 300, 100, 40);
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

-(void)clickAction
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.delegate = self;
    [self.navigationController pushViewController:secondVC animated:YES];
}

-(void)changeString:(NSString *)string
{
    _label.text = string;
}

-(UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(200, 350, 100, 40)];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.text = @"第一次";
        _label.textColor = [UIColor blackColor];
        _label.backgroundColor = [UIColor orangeColor];
    }
    return _label;
}



@end
