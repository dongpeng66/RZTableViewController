//
//  RZTableViewDelegate.h
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RZTableViewBaseModel.h"
@interface RZTableViewDelegate : NSObject<UITableViewDelegate>

@property (nonatomic, strong, readonly) RZTableViewBaseModel *rz_viewModel;
@property (nonatomic, strong, readonly) RZTableViewController *rz_tableViewController;
- (instancetype)initTableViewDelegateWithViewModel:(RZTableViewBaseModel *)viewModel WithController:(RZTableViewController *)viewController;

@end
