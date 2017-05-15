//
//  SecondViewController.h
//  test
//
//  Created by 周健 on 2017/5/10.
//  Copyright © 2017年 周健. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZJTestDelegate <NSObject>

-(void)changeString:(NSString *)string;

@end

@interface SecondViewController : UIViewController
@property(nonatomic, weak)id<ZJTestDelegate>delegate;

@end
