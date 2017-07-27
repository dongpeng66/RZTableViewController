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


@end
@implementation RZTableViewDelegate
- (instancetype)initTableViewDelegateWithViewModel:(RZTableViewBaseModel *)viewModel{
    
    self = [super init];
    
    if (self) {
        
        self.rz_viewModel = viewModel;
    }
    
    return self;
}
@end
