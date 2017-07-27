//
//  RZTableViewDelegate.m
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZTableViewDelegate.h"
@interface RZTableViewDelegate ()

@property (nonatomic, strong, readwrite) RZTableViewBaseModel *rz_viewModel;
@property (nonatomic, strong, readwrite) RZTableViewController *rz_tableViewController;

@end
@implementation RZTableViewDelegate
- (instancetype)initTableViewDelegateWithViewModel:(RZTableViewBaseModel *)viewModel WithController:(RZTableViewController *)viewController{
    
    self = [super init];
    
    if (self) {
        
        self.rz_viewModel = viewModel;
        self.rz_tableViewController=viewController;
    }
    
    return self;
}
@end
