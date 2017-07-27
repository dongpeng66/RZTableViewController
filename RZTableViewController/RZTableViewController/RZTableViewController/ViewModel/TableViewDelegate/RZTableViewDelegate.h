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

- (instancetype)initTableViewDelegateWithViewModel:(RZTableViewBaseModel *)viewModel;

@end
