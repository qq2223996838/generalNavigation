//
//  ViewController5.m
//  导航控制器
//
//  Created by Smile on 2018/2/8.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController5.h"

@interface ViewController5 ()

@end

@implementation ViewController5

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UILabel * Label  = [[UILabel alloc] initWithFrame:CGRectMake(100, 250, 200, 200)];
    Label.text=@"我是界面5";
    Label.font = [UIFont fontWithName:@"STHeitiSC-Light" size:20];
    Label.textColor = [UIColor blackColor];
    Label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:Label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
