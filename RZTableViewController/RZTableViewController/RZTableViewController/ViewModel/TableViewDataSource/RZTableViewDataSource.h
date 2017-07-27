//
//  RZTableViewDataSource.h
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import <Foundation/Foundation.h>
#import "RZTableViewBaseModel.h"
@interface RZTableViewDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, strong, readonly) RZTableViewBaseModel *rz_viewModel;

- (instancetype)initTableViewDataSourceWithViewModel:(RZTableViewBaseModel *)viewModel;
@end
