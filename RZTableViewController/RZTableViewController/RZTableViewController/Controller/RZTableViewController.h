//
//  RZTableViewController.h
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZViewController.h"
NS_ASSUME_NONNULL_BEGIN
@interface RZTableViewController : RZViewController
@property (nonatomic, strong, readonly) UITableView *rz_tableView;

/**
 初始化CLTableViewController
 
 @param style UITableViewStyle, 默认是UITableViewStylePlain
 @return RZTableViewController
 */
- (instancetype)initTableViewControllerWithStyle:(UITableViewStyle)style;

- (void)rz_removeRefresh;
- (void)rz_removeHeaderRefresh;
- (void)rz_removeFooterRefresh;

/**
 下拉刷新方法/上拉加载方法
 */
- (void)rz_dropDownRefresh;
- (void)rz_pullUpRefresh;

/**
 开始执行下拉操作/结束下拉操作
 */
- (void)rz_dropDownBeginRefresh;
- (void)rz_dropDownEndRefresh;

/**
 开始执行上拉操作/结束上拉操作/没有更多数据
 */
- (void)rz_pullUpBeginRefresh;
- (void)rz_pullUpEndRefresh;
/**
 没有更多数据
 */
- (void)rz_pullUpNoMoreData;

- (void)rz_setTableViewDelegate:(_Nullable id <UITableViewDelegate>)delegate
                     dataSource:(_Nullable id <UITableViewDataSource>)dataSource;
@end
NS_ASSUME_NONNULL_END
