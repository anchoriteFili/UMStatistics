//
//  ViewController.m
//  友盟统计
//
//  Created by 赵宏亚 on 16/5/16.
//  Copyright © 2016年 赵宏亚. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:@"ViewController"];//("PageOne"为页面名称，可自定义)
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:@"ViewController"];
}

- (IBAction)buttonClick:(UIButton *)sender {
    
    BaseClickAttribute *dict = [BaseClickAttribute attributeWithDic:nil];
    [MobClick event:@"buttonClick" attributes:dict];
//    [MobClick event:@"buttonClick"];
    
#pragma mark 设备标示
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [MobClick setAppVersion:version];
    
#pragma mark 友盟在统计用户时以设备为标准，如果需要统计应用自身的账号
    [MobClick profileSignInWithPUID:self.textField.text];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
