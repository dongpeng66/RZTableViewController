//
//  SimpleTableViewController.m
//  RZTableViewController
//
//  Created by 人众 on 2017/7/26.
//
//
#define rz_GET_METHOD_RETURN_OBJC(objc) if (objc) return objc

#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height  //设备高度
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width   //设备宽度
#import "SimpleTableViewController.h"
#import "SimpleTableViewModel.h"
#import "SimpleTableViewDelegate.h"
#import "SimpleTableViewDataSource.h"
@interface SimpleTableViewController ()
@property (nonatomic, strong) SimpleTableViewModel *simpleTableViewModel;
@property (nonatomic, strong) SimpleTableViewDelegate *simpleTableViewDelegate;
@property (nonatomic, strong) SimpleTableViewDataSource *simpleTableViewDataSource;

@end

@implementation SimpleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self rz_addConstraintsWithSuperView];
    
    [self rz_setTableViewDelegate:self.simpleTableViewDelegate
                       dataSource:self.simpleTableViewDataSource];
    
    [self rz_dropDownBeginRefresh];
    
    
    
    
}

- (void)rz_dropDownRefresh {
    
    [self.simpleTableViewModel rz_tableViewHTTPRequest];
}

- (void)rz_pullUpRefresh {
    
    
    
    [self rz_pullUpEndRefresh];
    
    [self rz_pullUpNoMoreData];
}

- (SimpleTableViewModel *)simpleTableViewModel {
    
    rz_GET_METHOD_RETURN_OBJC(_simpleTableViewModel);
    
    _simpleTableViewModel = [[SimpleTableViewModel alloc] initTableViewBaseModelWithController:self];
    
    return _simpleTableViewModel;
}

- (SimpleTableViewDelegate *)simpleTableViewDelegate {
    
    rz_GET_METHOD_RETURN_OBJC(_simpleTableViewDelegate);
    
    _simpleTableViewDelegate = [[SimpleTableViewDelegate alloc] initTableViewDelegateWithViewModel:self.simpleTableViewModel];
    
    return _simpleTableViewDelegate;
}

- (SimpleTableViewDataSource *)simpleTableViewDataSource {
    
    rz_GET_METHOD_RETURN_OBJC(_simpleTableViewDataSource);
    
    _simpleTableViewDataSource = [[SimpleTableViewDataSource alloc] initTableViewDataSourceWithViewModel:self.simpleTableViewModel];
    
    return _simpleTableViewDataSource;
}

- (void)rz_addConstraintsWithSuperView {
    
    
    
    
    self.rz_tableView.frame=CGRectMake(0, 64,SCREEN_WIDTH , SCREEN_HEIGHT-64);
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
