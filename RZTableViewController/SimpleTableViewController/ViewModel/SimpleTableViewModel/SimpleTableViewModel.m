//
//  SimpleTableViewModel.m
//  RZTableViewController
//
//  Created by 人众 on 2017/7/26.
//
//

#import "SimpleTableViewModel.h"

@implementation SimpleTableViewModel
- (void)rz_tableViewHTTPRequest {
    
    NSArray *array = @[@"SimpleCollectionViewController",
                       @"SimpleQRCodeImageViewController",
                       @"SimpleImageViewController"];
    
    [self.rz_dataSource addObjectsFromArray:array];
    
    [self.rz_tableViewController.rz_tableView reloadData];
    [self.rz_tableViewController rz_dropDownEndRefresh];
    
    [self rz_configTableViewWithDataSource];
}
@end
