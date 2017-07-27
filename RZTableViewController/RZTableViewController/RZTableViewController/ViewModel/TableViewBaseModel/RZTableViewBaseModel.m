//
//  RZTableViewBaseModel.m
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZTableViewBaseModel.h"
@interface RZTableViewBaseModel()

@property (nonatomic, weak, readwrite) RZTableViewController *rz_tableViewController;

@end
@implementation RZTableViewBaseModel
- (instancetype)initTableViewBaseModelWithController:(RZTableViewController *)viewController {
    
    self = [super init];
    
    if (self) {
        self.rz_tableViewController = viewController;
    }
    
    return self;
}

- (NSMutableArray *)rz_dataSource {
    
    if (!_rz_dataSource) {
        
        _rz_dataSource = [NSMutableArray array];
    }
    
    return _rz_dataSource;
}

- (void)rz_tableViewHTTPRequest {
    
}

- (void)rz_configTableViewWithDataSource {
    
    if (self.rz_dataSource.count > 0) {
        
        self.rz_tableViewController.rz_tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
}

@end
