//
//  ViewController.m
//  导航控制器
//
//  Created by Smile on 2018/2/8.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"


#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mainTabbarController=[[UITabBarController alloc]init];
    _mainTabbarController.view.frame=CGRectMake(0,0, ScreenWidth, ScreenHeight);
    _mainTabbarController.delegate = self;
    _mainTabbarController.tabBar.frame=CGRectMake(0, ScreenHeight-50, ScreenWidth, 50);
    
    //设置标题tabBar点击后字体颜色
    _mainTabbarController.tabBar.tintColor = [UIColor redColor];
    
    CGRect frame = CGRectMake(0, 0, ScreenWidth, 50);
    UIView *v = [[UIView alloc] initWithFrame:frame];
//    UIImage *img = [UIImage imageNamed:@"下面导航栏底图"];
//    UIColor *color = [[UIColor alloc] initWithPatternImage:img];
    UIColor *color = [UIColor blackColor];
    v.backgroundColor = color;
    [_mainTabbarController.tabBar insertSubview:v atIndex:0];
    _mainTabbarController.tabBar.opaque = YES;
    
    VC1=[[ViewController1 alloc]init];
    UITabBarItem *item0 = [[UITabBarItem alloc] initWithTitle:@"界面1" image:[UIImage imageNamed:@"me"] tag:0];
    VC1.tabBarItem = item0;
    
    ViewController2 *VC2=[[ViewController2 alloc]init];
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"界面2" image:[UIImage imageNamed:@"me"] tag:1];
    VC2.tabBarItem = item1;
    
    ViewController3 *VC3=[[ViewController3 alloc]init];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@" " image:[UIImage imageNamed:@"clear"] tag:2];
    VC3.tabBarItem = item2;
    
    ViewController4 *VC4=[[ViewController4 alloc]init];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"界面4" image:[UIImage imageNamed:@"me"] tag:3];
    VC4.tabBarItem = item3;
    
    ViewController5 *VC5=[[ViewController5 alloc]init];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"界面5" image:[UIImage imageNamed:@"me"] tag:4];
    VC5.tabBarItem = item4;
    
    marr=[[NSMutableArray alloc]initWithObjects:VC1,VC2,VC3,VC4,VC5,nil];
    _mainTabbarController.viewControllers=marr;
    
    
    // 拿到 TabBar 在拿到相应的item
    UITabBar *tabBar = _mainTabbarController.tabBar;
    UITabBarItem *item00 = [tabBar.items objectAtIndex:0];
    item00.selectedImage = [[UIImage imageNamed:@"me_Click"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item00.image = [[UIImage imageNamed:@"me"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *item01 = [tabBar.items objectAtIndex:1];
    item01.selectedImage = [[UIImage imageNamed:@"me_Click"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item01.image = [[UIImage imageNamed:@"me"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *item03 = [tabBar.items objectAtIndex:3];
    item03.selectedImage = [[UIImage imageNamed:@"me_Click"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item03.image = [[UIImage imageNamed:@"me"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *item04 = [tabBar.items objectAtIndex:4];
    item04.selectedImage = [[UIImage imageNamed:@"me_Click"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item04.image = [[UIImage imageNamed:@"me"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //一般中间tabBar需要不一样的视觉效果，可以自定义
    specialBut = [UIButton buttonWithType:UIButtonTypeCustom];
    [specialBut setBackgroundImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
    specialBut.frame = CGRectMake(ScreenWidth/2-22, ScreenHeight-47, 44, 44);
    [_mainTabbarController.view addSubview:specialBut];
    [specialBut addTarget:self action:@selector(specialButClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_mainTabbarController.view];
    
}

-(void)specialButClick:(id)x
{
    [specialBut setBackgroundImage:[UIImage imageNamed:@"me_Click"] forState:UIControlStateNormal];
    [_mainTabbarController setSelectedIndex:2];
    return;
}

- (BOOL)tabBarController:(UITabBarController*)tabBarController shouldSelectViewController:(UIViewController*)viewController
{
    if (![viewController isKindOfClass:[ViewController3 class]]) {
        [specialBut setBackgroundImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
        return YES;
    }
    return YES;
}



@end
