//
//  RZTableViewController.m
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZTableViewController.h"
#import "MJRefresh.h"
#import "RZTableViewDelegate.h"
#import "RZTableViewBaseModel.h"
@interface RZTableViewController ()
@property (nonatomic, assign) UITableViewStyle tableViewStyle;

@property (nonatomic, strong, readwrite) UITableView *rz_tableView;

@property (nonatomic, strong) RZTableViewDelegate *rz_tableViewDelegate;
@property (nonatomic, strong) RZTableViewBaseModel *rz_ableViewBaseModel;
@end

@implementation RZTableViewController

- (instancetype)initTableViewControllerWithStyle:(UITableViewStyle)style {
    
    self = [super init];
    
    if (self) {
        
        [self setTableViewStyle:style];
    }
    
    return self;
}

#pragma mark - View Did Load
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.opaque = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self rz_addRefresh];
}

- (UITableView *)rz_tableView {
    
    if (!_rz_tableView) {
        
        _rz_tableView = [[UITableView alloc] initWithFrame:self.view.frame
                                                     style:self.tableViewStyle];
        
        if (self.tableViewStyle == UITableViewStylePlain) {
            
            _rz_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        }
        
        _rz_tableView.opaque = YES;
    }
    
    return _rz_tableView;
}

- (void)rz_setTableViewDelegate:(id<UITableViewDelegate>)delegate
                     dataSource:(id<UITableViewDataSource>)dataSource {
    
    self.rz_tableView.delegate   = delegate;
    self.rz_tableView.dataSource = dataSource;
}

#pragma mark - Table View Delegate
- (RZTableViewDelegate *)rz_tableViewDelegate {
    
    if (!_rz_tableViewDelegate) {
        
        _rz_tableViewDelegate = [[RZTableViewDelegate alloc] initTableViewDelegateWithViewModel:self.rz_ableViewBaseModel WithController:self];
    }
    
    return _rz_tableViewDelegate;
}

#pragma mark - Table View Base Model
- (RZTableViewBaseModel *)rz_ableViewBaseModel {
    
    if (!_rz_ableViewBaseModel) {
        _rz_ableViewBaseModel = [[RZTableViewBaseModel alloc] initTableViewBaseModelWithController:self];
    }
    
    return _rz_ableViewBaseModel;
}

#pragma mark - Refresh
- (void)rz_addRefresh {
    
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self rz_dropDownRefresh];
    }];
    
    self.rz_tableView.mj_header = header;
    
    MJRefreshBackNormalFooter *refreshFooter = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self rz_pullUpRefresh];
    }];
    
    self.rz_tableView.mj_footer = refreshFooter;
    
    [self.view addSubview:self.rz_tableView];
}

- (void)rz_dropDownRefresh {
    
}

- (void)rz_pullUpRefresh {
    
}

- (void)rz_dropDownBeginRefresh {
    [self.rz_tableView.mj_header beginRefreshing];
}

- (void)rz_dropDownEndRefresh {
    [self.rz_tableView.mj_header endRefreshing];
}

- (void)rz_pullUpBeginRefresh {
    [self.rz_tableView.mj_footer beginRefreshing];
}

- (void)rz_pullUpEndRefresh {
    [self.rz_tableView.mj_footer endRefreshing];
}

- (void)rz_removeRefresh {
    
    self.rz_tableView.mj_header = nil;
    self.rz_tableView.mj_footer = nil;
}

- (void)rz_removeHeaderRefresh {
    self.rz_tableView.mj_header = nil;
}

- (void)rz_removeFooterRefresh {
    self.rz_tableView.mj_footer = nil;
}

@end
