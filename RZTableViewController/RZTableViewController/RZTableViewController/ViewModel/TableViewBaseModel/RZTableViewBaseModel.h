//
//  RZTableViewBaseModel.h
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import <Foundation/Foundation.h>
#import "RZTableViewController.h"
@interface RZTableViewBaseModel : NSObject
@property (nonatomic, strong) NSMutableArray *rz_dataSource;
@property (nonatomic, weak, readonly) RZTableViewController *rz_tableViewController;

- (instancetype)initTableViewBaseModelWithController:(RZTableViewController *)viewController;

/**
 通过HTTP请求数据
 */
- (void)rz_tableViewHTTPRequest;

/**
 配置TableView每一条Cell所显示的分割线
 */
- (void)rz_configTableViewWithDataSource;
@end
