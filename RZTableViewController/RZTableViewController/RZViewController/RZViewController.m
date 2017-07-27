//
//  RZViewController.m
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZViewController.h"

@interface RZViewController ()

@end

@implementation RZViewController
- (instancetype)initCLViewControllerWith:(RZViewControllerStyle)style {
    
    self = [super init];
    
    if (self) {
        
        if (style == RZChildViewController) {
            
            self.hidesBottomBarWhenPushed = YES;
        }
    }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        
        self.automaticallyAdjustsScrollViewInsets = NO;
        
    }
    
    self.extendedLayoutIncludesOpaqueBars=YES;  //解决隐藏导航栏问题,设置控制器的上步偏移量是64px
    self.view.opaque = YES;
    self.view.backgroundColor = [UIColor whiteColor];
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
